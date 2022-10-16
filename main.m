%%This file is mainly based on the project of Kilian & Murphy (2009), we
%%made some simplification to save the computational power.

close all;
clc;
clear;


global xmax

load oildata

load worldprod
ProdMBPM=worldprod(2:end)*30/1000;
OECDCrudeDif=oildata(:,4);

xmax=17;
jmax=5000000;
rdraws=50;   %posterior draws

randn('state',316)

% percent change in global oil production, real activity index from Kilian(AER 2009), the log real price of oil, and changes in OECD crude oil inventories
%%
%Bayes draws, 

tic;
[IRFposs ]=BAYESsign(oildata,xmax,4,24,rdraws,jmax,ProdMBPM,OECDCrudeDif);
%save IRFpossBayes IRFposs 
%load IRFpossBayes
toc;

IRMposs=IRFposs;
save BayesPosterior IRMposs

[j k l] = size(IRFposs);
elasuse=zeros(1,l);
elasprod=zeros(l,1);
for i=1:l;
    IRprod=IRFposs(1,1,i); IRinv=IRFposs(4,1,i); IRprice=IRFposs(3,1,i);
    FlowNew=ProdMBPM*(1+IRprod/100)-mean(OECDCrudeDif)-IRinv;
    Flow=ProdMBPM-mean(OECDCrudeDif);
    PctChange=100*(FlowNew-Flow)./Flow;
    ElasUseSeries=PctChange/IRprice;
    elasuse(i)=mean(ElasUseSeries);
    elasprod(i)=IRFposs(1,1,i)./IRFposs(3,1,i);
end;

%obtain the median elasticity in use
 medelasuse=median(elasuse)
	save medelasuse medelasuse; %called by Main.m

elasusepctile=prctile(elasuse,[16 50 84])
elasprodpctile=prctile(elasprod,[16 50 84])

std(elasusepctile)
std(elasprodpctile)
%%
[BETAnc,B,X, SIGMA, U, V]=lsvarcSA(oildata,24);

[IRFposs]=IRFsign(BETAnc,SIGMA,xmax,jmax);

[j k l] = size(IRFposs);




%imposing additional restrictions

index=1;
IRFelas=zeros(4^2,xmax+1);  %will be populated with the admissible IRFs
elasticity=IRFposs(9,1,:)./IRFposs(11,1,:);  %supply elasticity in response to speculative demand shock
ADelas=IRFposs(5,1,:)./IRFposs(7,1,:);  %supply elasticity in response to flow demand shock
elasuse=0;
format short
for i=1:l;
    %%elas in use
    IRprod=IRFposs(1,1,i); IRinv=IRFposs(4,1,i); IRprice=IRFposs(3,1,i);
    FlowNew=ProdMBPM*(1+IRprod/100)-mean(OECDCrudeDif)-IRinv;
    Flow=ProdMBPM-mean(OECDCrudeDif);
    PctChange=100*(FlowNew-Flow)./Flow;
    ElasUseSeries=PctChange/IRprice;
    if elasticity(i)<=.0258 && ADelas(i)<=.0258  && mean(ElasUseSeries)<=0    && min(cumsum(IRFposs(1,1:12,i)))>=0 && min(IRFposs(2,1:12,i))>=0 && max(IRFposs(3,1:12,i))<=0 ;
        IRFelas(:,:,index)=IRFposs(:,:,i); %admissible IRFs
        elasuse(index)=mean(ElasUseSeries);  %elasticity in use
        index=index+1;
    end;
  
end;

load medelasuse
%median of posterior
distance=abs(elasuse-medelasuse);
%find index of IRF with elasuse closest to median of posterior
[mindist, findex]=min(distance)  


IdentMat=reshape(IRFelas(:,1,findex),4,4);
Uhat=U;
p=24;
t=364;
[K, q]=size(IdentMat);

% Compute structural multipliers
A=  [BETAnc; eye(K*(p-1),K*(p-1)), zeros(K*(p-1),K)];
J=[eye(K,K) zeros(K,K*(p-1))];
IRF=reshape(J*A^0*J'*IdentMat,K^2,1);

for i=1:t-p-1
	IRF=([IRF reshape(J*A^i*J'*IdentMat,K^2,1)]);
end;



% Compute structural shocks Ehat from reduced form shocks Uhat
Ehat=inv(IdentMat)*Uhat(1:q,:);

yhat1=zeros(t-p,1); yhat2=zeros(t-p,1); yhat3=zeros(t-p,1); yhat4=zeros(t-p,1);
for i=1:t-p
	yhat1(i,:)=dot(IRF(3,1:i),Ehat(1,i:-1:1));
	yhat2(i,:)=dot(IRF(7,1:i),Ehat(2,i:-1:1));
	yhat3(i,:)=dot(IRF(11,1:i),Ehat(3,i:-1:1));  
    yhat4(i,:)=dot(IRF(15,1:i),Ehat(4,i:-1:1));  
end;

time=(1990+1/12+1/12*p):1/12:2020+4/12; %starts at 1992.1

save Ehat 
%cumshock=yhat1+yhat2+yhat3+yhat4;  

%%
%figure of the historical decomposition
figure;
subplot(4,1,1)
plot(time,yhat1,'b-','linewidth',2);
title('Cumulative Effect of Flow Supply Shock on Real Price of Crude Oil')
axis([1992+1/12 2020+4/12 -50 +50])
grid on

subplot(4,1,2)
plot(time,yhat2,'b-','linewidth',2);
title('Cumulative Effect of Flow Demand Shock on Real Price of Crude Oil')
axis([1992+1/12 2020+4/12 -50 +50])
grid on

subplot(4,1,3)
plot(time,yhat3,'b-','linewidth',2);
title('Cumulative Effect of Storage Demand Shock on Real Price of Crude Oil')
axis([1992+1/12 2020+4/12 -50 +50])
grid on

subplot(4,1,4)
plot(time,yhat4,'b-','linewidth',2);
title('Cumulative Effect of Residual Demand Shock on Real Price of Crude Oil')
axis([1992+1/12 2020+4/12 -50 +50])
grid on

shock = [yhat1', yhat2', yhat3', yhat4'];                          
[m, n] = size(shock);            
data_cell = mat2cell(shock, ones(m,1), ones(n,1));   
title = {'supply', 'aggdemand', 'spedemand', 'residemand'};                         
result = [title; data_cell];                                         
s = xlswrite('shock.xls', result);   