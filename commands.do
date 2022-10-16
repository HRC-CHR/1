
/***TABLE 1***/


***************************************
****************US*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("US") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12

lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 1
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 2


***************************************
****************UK*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("UK") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12

lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 1
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 2


***************************************
****************CANADA*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("CANADA") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12

lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 1
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 2


***************************************
****************JAPAN*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("JAPAN") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12

lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 1
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 2

***************************************
****************GERMANY*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("GERMANY") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12

lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 1
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 2


***************************************
****************RUSSIA*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("RUSSIA") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12

lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 1
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 2


**-------------------------------------------------------------------------
**-------------------------------------------------------------------------


/***TABLE 2***/


***************************************
****************US*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("US") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS  supply l(1/4).supply
lincom supply+l1.supply + l2.supply + l3.supply+ l4.supply    ///test hypothesis H1
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H2
lincom l1.supply + l2.supply + l3.supply+ l4.supply           ///test hypothesis H3
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H4


reg lnRS  aggdemand l(1/4).aggdemand
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4


reg lnRS  spedemand l(1/4).spedemand
lincom spedemand+l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand   ///test hypothesis H1
test spedemand l1.spedemand l2.spedemand l3.spedemand l4.spedemand      ///test hypothesis H2
lincom l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand        ///test hypothesis H3
test  l1.spedemand l2.spedemand l3.spedemand l4.spedemand             ///test hypothesis H4

reg lnRS  residemand l(1/4).residemand
lincom residemand+l1.residemand + l2.residemand + l3.residemand+ l4.residemand    ///test hypothesis H1
test residemand l1.residemand l2.residemand l3.residemand l4.residemand     ///test hypothesis H2
lincom l1.residemand + l2.residemand + l3.residemand+ l4.residemand         ///test hypothesis H3
test  l1.residemand l2.residemand l3.residemand l4.residemand               ///test hypothesis H4



***************************************
****************UK*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("UK") firstrow

qui{
drop lnCPI lns dlns lnip trend

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable S "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS  supply l(1/4).supply
lincom supply+l1.supply + l2.supply + l3.supply+ l4.supply    ///test hypothesis H1
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H2
lincom l1.supply + l2.supply + l3.supply+ l4.supply           ///test hypothesis H3
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H4


reg lnRS  aggdemand l(1/4).aggdemand
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4


reg lnRS  spedemand l(1/4).spedemand
lincom spedemand+l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand   ///test hypothesis H1
test spedemand l1.spedemand l2.spedemand l3.spedemand l4.spedemand      ///test hypothesis H2
lincom l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand        ///test hypothesis H3
test  l1.spedemand l2.spedemand l3.spedemand l4.spedemand             ///test hypothesis H4

reg lnRS  residemand l(1/4).residemand
lincom residemand+l1.residemand + l2.residemand + l3.residemand+ l4.residemand    ///test hypothesis H1
test residemand l1.residemand l2.residemand l3.residemand l4.residemand     ///test hypothesis H2
lincom l1.residemand + l2.residemand + l3.residemand+ l4.residemand         ///test hypothesis H3
test  l1.residemand l2.residemand l3.residemand l4.residemand               ///test hypothesis H4

***************************************
****************CNANADA*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("CANADA") firstrow

qui{
drop lnCPI lns dlns lnip 

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable S "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS  supply l(1/4).supply
lincom supply+l1.supply + l2.supply + l3.supply+ l4.supply    ///test hypothesis H1
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H2
lincom l1.supply + l2.supply + l3.supply+ l4.supply           ///test hypothesis H3
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H4


reg lnRS  aggdemand l(1/4).aggdemand
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4


reg lnRS  spedemand l(1/4).spedemand
lincom spedemand+l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand   ///test hypothesis H1
test spedemand l1.spedemand l2.spedemand l3.spedemand l4.spedemand      ///test hypothesis H2
lincom l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand        ///test hypothesis H3
test  l1.spedemand l2.spedemand l3.spedemand l4.spedemand             ///test hypothesis H4

reg lnRS  residemand l(1/4).residemand
lincom residemand+l1.residemand + l2.residemand + l3.residemand+ l4.residemand    ///test hypothesis H1
test residemand l1.residemand l2.residemand l3.residemand l4.residemand     ///test hypothesis H2
lincom l1.residemand + l2.residemand + l3.residemand+ l4.residemand         ///test hypothesis H3
test  l1.residemand l2.residemand l3.residemand l4.residemand               ///test hypothesis H4

***************************************
****************JAPAN*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("JAPAN") firstrow

qui{
drop lnCPI lns dlns lnip trend

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable S "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS  supply l(1/4).supply
lincom supply+l1.supply + l2.supply + l3.supply+ l4.supply    ///test hypothesis H1
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H2
lincom l1.supply + l2.supply + l3.supply+ l4.supply           ///test hypothesis H3
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H4


reg lnRS  aggdemand l(1/4).aggdemand
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4


reg lnRS  spedemand l(1/4).spedemand
lincom spedemand+l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand   ///test hypothesis H1
test spedemand l1.spedemand l2.spedemand l3.spedemand l4.spedemand      ///test hypothesis H2
lincom l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand        ///test hypothesis H3
test  l1.spedemand l2.spedemand l3.spedemand l4.spedemand             ///test hypothesis H4

reg lnRS  residemand l(1/4).residemand
lincom residemand+l1.residemand + l2.residemand + l3.residemand+ l4.residemand    ///test hypothesis H1
test residemand l1.residemand l2.residemand l3.residemand l4.residemand     ///test hypothesis H2
lincom l1.residemand + l2.residemand + l3.residemand+ l4.residemand         ///test hypothesis H3
test  l1.residemand l2.residemand l3.residemand l4.residemand               ///test hypothesis H4


***************************************
****************GERMANY*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("GERMANY") firstrow

qui{
drop lnCPI lns dlns lnip trend

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable S "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS  supply l(1/4).supply
lincom supply+l1.supply + l2.supply + l3.supply+ l4.supply    ///test hypothesis H1
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H2
lincom l1.supply + l2.supply + l3.supply+ l4.supply           ///test hypothesis H3
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H4


reg lnRS  aggdemand l(1/4).aggdemand
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4


reg lnRS  spedemand l(1/4).spedemand
lincom spedemand+l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand   ///test hypothesis H1
test spedemand l1.spedemand l2.spedemand l3.spedemand l4.spedemand      ///test hypothesis H2
lincom l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand        ///test hypothesis H3
test  l1.spedemand l2.spedemand l3.spedemand l4.spedemand             ///test hypothesis H4

reg lnRS  residemand l(1/4).residemand
lincom residemand+l1.residemand + l2.residemand + l3.residemand+ l4.residemand    ///test hypothesis H1
test residemand l1.residemand l2.residemand l3.residemand l4.residemand     ///test hypothesis H2
lincom l1.residemand + l2.residemand + l3.residemand+ l4.residemand         ///test hypothesis H3
test  l1.residemand l2.residemand l3.residemand l4.residemand               ///test hypothesis H4


***************************************
****************RUSSIA*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("RUSSIA") firstrow

qui{
drop lnCPI lns dlns lnip trend

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable S "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS  supply l(1/4).supply
lincom supply+l1.supply + l2.supply + l3.supply+ l4.supply    ///test hypothesis H1
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H2
lincom l1.supply + l2.supply + l3.supply+ l4.supply           ///test hypothesis H3
test supply l1.supply l2.supply l3.supply l4.supply           ///test hypothesis H4


reg lnRS  aggdemand l(1/4).aggdemand
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4


reg lnRS  spedemand l(1/4).spedemand
lincom spedemand+l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand   ///test hypothesis H1
test spedemand l1.spedemand l2.spedemand l3.spedemand l4.spedemand      ///test hypothesis H2
lincom l1.spedemand + l2.spedemand + l3.spedemand+ l4.spedemand        ///test hypothesis H3
test  l1.spedemand l2.spedemand l3.spedemand l4.spedemand             ///test hypothesis H4

reg lnRS  residemand l(1/4).residemand
lincom residemand+l1.residemand + l2.residemand + l3.residemand+ l4.residemand    ///test hypothesis H1
test residemand l1.residemand l2.residemand l3.residemand l4.residemand     ///test hypothesis H2
lincom l1.residemand + l2.residemand + l3.residemand+ l4.residemand         ///test hypothesis H3
test  l1.residemand l2.residemand l3.residemand l4.residemand               ///test hypothesis H4


**-------------------------------------------------------------------------
**-------------------------------------------------------------------------



/***TABLE 3***/

***************************************
****************US*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("US") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12 aggdemand l(1/4).aggdemand

***test for aggregate demand shocks***
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4

***test for current and future cash flows***
lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 5
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 6


***************************************
****************CANADA*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("CANDA") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12 aggdemand l(1/4).aggdemand

***test for aggregate demand shocks***
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4

***test for current and future cash flows***
lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 5
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 6


***************************************
****************JAPAN*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("JAPAN") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12 aggdemand l(1/4).aggdemand

***test for aggregate demand shocks***
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4

***test for current and future cash flows***
lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 5
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 6


***************************************
****************GERMANY*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("GERMANY") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12 aggdemand l(1/4).aggdemand

***test for aggregate demand shocks***
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4

***test for current and future cash flows***
lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 5
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 6


***************************************
****************RUSSIA*****************
***************************************


clear all

import excel "correct path\Bay.xlsx", sheet("RUSSIA") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

//future cash flow

reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12 aggdemand l(1/4).aggdemand

***test for aggregate demand shocks***
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4

***test for current and future cash flows***
lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 5
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 6


**-------------------------------------------------------------------------
**-------------------------------------------------------------------------



/***TABLE 4***/

clear all

import excel "correct path\Bay.xlsx", sheet("US") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}

reg lnRS DY DEF TERM SDEF STERN
test DY DEF TERM SDEF STERN      ///test for proxes of expected returns





**-------------------------------------------------------------------------
**-------------------------------------------------------------------------



/***TABLE 5***/

clear all

import excel "correct path\Bay.xlsx", sheet("US") firstrow

qui{

gen trend = monthly(date, "YM")
format trend %tm
tsset trend	
label variable trend "observation date"
label variable R "stock index"
label variable CPI "Consumer Price Index"
label variable IP "Industrial production index"
label variable GBY "Government bond yield"
label variable TBY "3-Month Treasury Bill Secondary Market Rate"
label variable supply "supply shock"
label variable aggdemand "aggregate demand shock"
label variable spedemand "oil special demand shock"
label variable i "inflation"
label variable lnRS "real stock return"
label variable dlnip "first difference if lnip"
}


reg lnRS dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12 DY DEF TERM SDEF STERN aggdemand l(1/4).aggdemand

***test for aggregate demand shocks***
lincom aggdemand+l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand ///test hypothesis H1
test aggdemand l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand        ///test hypothesis H2
lincom l1.aggdemand + l2.aggdemand + l3.aggdemand+ l4.aggdemand           ///test hypothesis H3
test  l1.aggdemand l2.aggdemand l3.aggdemand l4.aggdemand                ///test hypothesis H4

***test for current and future cash flows***
lincom dlnip+ dlnip1+ dlnip2+ dlnip3+ dlnip4+ dlnip5+ dlnip6+ dlnip7+ dlnip8+ dlnip9+ dlnip10+ dlnip11+ dlnip12          ///test hypothesis 5
test dlnip dlnip1 dlnip2 dlnip3 dlnip4 dlnip5 dlnip6 dlnip7 dlnip8 dlnip9 dlnip10 dlnip11 dlnip12                           ///test hypothesis 6

***test for proxes of expected returns
test DY DEF TERM SDEF STERN       ///test hypothesis 7



**-------------------------------------------------------------------------
**-------------------------------------------------------------------------















