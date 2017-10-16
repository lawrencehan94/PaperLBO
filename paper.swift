//Core Assumptions
let year1revenue: Double = 100.0
let year2growth: Double = 0.20
let year6growthInput: Double = 0.05
let year1margin: Double = 0.40
let year6margin: Double = 0.40

//Miscellaneous Assumptions
let depreciationRevenue: Double = 0.20
let interestExpense: Double = 12.0
let taxRate: Double = 0.40
let capexRevenue: Double = 0.15
let nwcRevenue: Double = 0.05

//Revenue Assumptions

let changeInGrowth = (year6growthInput - year2growth)/4

let year3growth = year2growth + changeInGrowth
let year4growth = year3growth + changeInGrowth
let year5growth = year4growth + changeInGrowth
let year6growth = year5growth + changeInGrowth

let year2revenue = year1revenue*year2growth
let year3revenue = year2revenue*year3growth
let year4revenue = year3revenue*year4growth
let year5revenue = year4revenue*year5growth
let year6revenue = year5revenue*year6growth

//EBITDA Assumptions
let year1EBITDA = 40.0
let year6EBITDA = 40.0


//Purchase Price Assumptions
let entryMultiple = 4.0
let exitMultiple = 6.0
let percentPurchaseDebt = 0.40

//Purchase Price
let entryEV = entryMultiple * year1EBITDA
let entryDebt = percentPurchaseDebt * entryEV
let entryEquityValue = (1-percentPurchaseDebt)*entryEV

//FCF Calulation
func getFCF(revenue: Double, EBITDA: Double) -> Double {
	let EBIT = EBITDA - (depreciationRevenue*revenue)
	let EBT = EBIT - interestExpense
	let taxes = taxRate*EBT
	let capex = capexRevenue*revenue
	let increaseNWC = nwcRevenue*revenue
	let FCF = EBITDA - interestExpense - taxes - capex - increaseNWC
	return FCF
}

let FCFYear1 = getFCF(revenue: year1revenue, EBITDA: 40.0)
let FCFYear2 = getFCF(revenue: year2revenue, EBITDA: 40.0)
let FCFYear3 = getFCF(revenue: year3revenue, EBITDA: 40.0)
let FCFYear4 = getFCF(revenue: year4revenue, EBITDA: 40.0)
let FCFYear5 = getFCF(revenue: year5revenue, EBITDA: 40.0)

let totalFCF = FCFYear1 + FCFYear2 + FCFYear3 + FCFYear4 + FCFYear5

//Exit Value
let exitEV = exitMultiple * year6EBITDA
let exitDebt = entryDebt - totalFCF
let exitEquityValue = exitEV - exitDebt
let MoM = exitEquityValue / entryEquityValue
print(MoM)
