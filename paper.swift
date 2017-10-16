//Core Assumptions
let year1revenue: Double = 100.0
let year2growth: Double = 0.40
let year6growthInput: Double = 0.05
let year1margin: Double = 0.40
let year6marginInput: Double = 0.45

//Miscellaneous Assumptions
let depreciationRevenue: Double = 0.20
let taxRate: Double = 0.40
let capexRevenue: Double = 0.15
let nwcRevenue: Double = 0.05

//Purchase Price Assumptions
let entryMultiple: Double = 4.0
let exitMultiple: Double = 6.0
let percentPurchaseDebt: Double = 0.40
let interestExpensePercentage: Double = 0.10

//Purchase Price
let entryEV = entryMultiple * year1revenue * year1margin
let entryDebt = percentPurchaseDebt * entryEV
let entryEquityValue = (1-percentPurchaseDebt)*entryEV
let interestExpense: Double = interestExpensePercentage * entryDebt

//Revenue Assumptions

let changeInGrowth = (year6growthInput - year2growth)/4

let year3growth = year2growth + changeInGrowth
let year4growth = year3growth + changeInGrowth
let year5growth = year4growth + changeInGrowth
let year6growth = year5growth + changeInGrowth

let year2revenue = year1revenue*(1 + year2growth)
let year3revenue = year2revenue*(1 + year3growth)
let year4revenue = year3revenue*(1 + year4growth)
let year5revenue = year4revenue*(1 + year5growth)
let year6revenue = year5revenue*(1 + year6growth)

//EBITDA Assumptions
let changeInMargin = (year6marginInput - year1margin)/5

let year2margin = year1margin + changeInMargin
let year3margin = year2margin + changeInMargin
let year4margin = year3margin + changeInMargin
let year5margin = year4margin + changeInMargin
let year6margin = year5margin + changeInMargin

let year1EBITDA = year1margin * year1revenue
let year2EBITDA = year2margin * year2revenue
let year3EBITDA = year3margin * year3revenue
let year4EBITDA = year4margin * year4revenue
let year5EBITDA = year5margin * year5revenue
let year6EBITDA = year6margin * year6revenue

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

let FCFYear1 = getFCF(revenue: year1revenue, EBITDA: year1EBITDA)
let FCFYear2 = getFCF(revenue: year2revenue, EBITDA: year2EBITDA)
let FCFYear3 = getFCF(revenue: year3revenue, EBITDA: year3EBITDA)
let FCFYear4 = getFCF(revenue: year4revenue, EBITDA: year4EBITDA)
let FCFYear5 = getFCF(revenue: year5revenue, EBITDA: year5EBITDA)

let totalFCF = FCFYear1 + FCFYear2 + FCFYear3 + FCFYear4 + FCFYear5

//Exit Value
let exitEV = exitMultiple * year6EBITDA
let exitDebt = entryDebt - totalFCF
let exitEquityValue = exitEV - exitDebt
let MoM = exitEquityValue / entryEquityValue
print(MoM)
