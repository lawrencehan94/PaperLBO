Label, "2017 Revenue" needs to be dynamic based on the year												
year0	2017											
year1	2018											
												
g1	470%							rev0	15	m1	30%	
g10	3%									m10	40%	
gDiff	467.0%									mDiffPerYear	1%	
												
case	1											
												
		Expon.	Linear		g1	470.0%		rev1	86	m1	30%	
quad2	50.0%	50.0%	11%		g2	236.5%		rev2	288	m2	31%	
quad3	25.0%	25.0%	11%		g3	119.8%		rev3	632	m3	32%	
quad4	12.5%	12.5%	11%		g4	61.4%		rev4	1020	m4	33%	
quad5	6.3%	6.3%	11%		g5	32.2%		rev5	1349	m5	34%	
quad6	3.1%	3.1%	11%		g6	17.6%		rev6	1586	m6	36%	
quad7	1.6%	1.6%	11%		g7	10.3%		rev7	1749	m7	37%	
quad8	0.8%	0.8%	11%		g8	6.6%		rev8	1866	m8	38%	
quad9	0.4%	0.4%	11%		g9	4.8%		rev9	1956	m9	39%	
quad10	0.4%	0.4%	11%		g10	3.0%		rev10	2014	m10	40%	
sum	100.0%	100.0%	100.0%									
												
daRev	4%		returnFCF(prevRev: Double, thisRev: Double, margin: Double) { }									
sbcRev	0.5%											
capexRev	4%											
taxRate	35%											
nwcRev	10%											
nwc0	1.5											
nwc1	9											
changeNWC	7											
changeNWCRev	10%											
												
discountRate	15%											
discountPeriod	1.00											
												
	2017	2018	2019	2020	2021	2022	2023	2024	2025	2026	2027	
	Years											
	0	1	2	3	4	5	6	7	8	9	10	
Revenue	15	86	288	632	1,020	1,349	1,586	1,749	1,866	1,956	2,014	
% Growth		470%	237%	120%	61%	32%	18%	10%	7%	5%	3%	
EBIT		26	90	204	340	465	564	641	705	760	806	
% Margin		30%	31%	32%	33%	34%	36%	37%	38%	39%	40%	
D&A		3	12	25	41	54	63	70	75	78	81	
% of Revenue		4%	4%	4%	4%	4%	4%	4%	4%	4%	4%	
SBC		0	1	3	5	7	8	9	9	10	10	
% of Revenue		0.5%	0.5%	0.5%	0.5%	0.5%	0.5%	0.5%	0.5%	0.5%	0.5%	
Taxes		9	31	71	119	163	197	224	247	266	282	
% Tax Rate		35%	35%	35%	35%	35%	35%	35%	35%	35%	35%	
Change in NWC		7	20	34	39	33	24	16	12	9	6	
% of Change in Rev		10%	10%	10%	10%	10%	10%	10%	10%	10%	10%	
Capex		3	12	25	41	54	63	70	75	78	81	
% of Revenue		4%	4%	4%	4%	4%	4%	4%	4%	4%	4%	
uFCF		9	37	95	177	262	335	392	437	476	508	
% Margin		11%	13%	15%	17%	19%	21%	22%	23%	24%	25%	
												
discountYears		1.00	2.00	3.00	4.00	5.00	6.00	7.00	8.00	9.00	10.00	
discountPeriod		1.15	1.32	1.52	1.75	2.01	2.31	2.66	3.06	3.52	4.05	
discountFactor		0.87	0.76	0.66	0.57	0.50	0.43	0.38	0.33	0.28	0.25	
pvFCF		8	28	62	101	130	145	147	143	135	126	
												
sumPVFCF		1025										
												
terminalValue		4358										
discountYears10		10										
discountPeriod10		4.05										
discountFactor		0.25										
pvOfTV		1077										
												
aggValue		2103										
