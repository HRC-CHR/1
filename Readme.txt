This zip.file contains two parts, one is the Matlab code for decomposing, the other is the 
Stata code to re-examine.

**************************************Matlab******************************************
This contains the dataset and programme used to decompose the oil shocks.
We mainly follow the dataset of Kilian & Murphy (2014) with some simplification.

Reference:
Lutz Kilian and Daniel P Murphy, "The Role of Oil Inventories and
Speculative Trading in the Global Market for Crude Oil", Journal of
Applied Econometrics, Vol. 29. No. 3, 2014, pp. 454-478.


**DATA

The oildata.mat contains, in the following order, percent change in
global oil production, real activity index from Kilian(AER 2009), the
log real price of oil, and changes in OECD crude oil inventories

The worldprod.mat contains global world oil production.

**Programmes

The main.m is our primary programme, generating the historical decomposition
and the related figure. This includes a Bayes draws to generate the posterior IRFs and the median
elasticity in use, which a requires substantial computing power. Also the parameters, structural shocks
are estimated.

Other programmes, i.e. BAYESsign.m, IRFsign.m, IsvarcSA.m, IsvarcSA2.m, vec.m, are function called 
by the main.m to generate necessary results.


**************************************Stata******************************************
There are in total 6 sheets in the Bay.xlsx for 6 countries respectively. Correct path should be specified.