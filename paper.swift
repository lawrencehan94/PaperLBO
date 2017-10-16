//Core Assumptions

//Miscellaneous Assumptions
let depreciationRevenue = 0.20
let interestExpense = 12.0
let taxRate = 0.40
let capexRevenue = 0.15
let nwcRevenue = 0.05

func getFCF(revenue: Double, EBITDA: Double) -> Double {
	let EBIT = EBITDA - (depreciationRevenue*revenue)
	let EBT = EBIT - interestExpense
	let taxes = taxRate*EBT
	let capex = capexRevenue*revenue
	let increaseNWC = nwcRevenue*revenue
	let FCF = EBITDA - interestExpense - taxes - capex - increaseNWC
	return FCF
}

let FCFYear1 = getFCF(revenue: 100.0, EBITDA: 40.0)
let FCFYear2 = getFCF(revenue: 100.0, EBITDA: 40.0)
let FCFYear3 = getFCF(revenue: 100.0, EBITDA: 40.0)
let FCFYear4 = getFCF(revenue: 100.0, EBITDA: 40.0)
let FCFYear5 = getFCF(revenue: 100.0, EBITDA: 40.0)

let totalFCF = FCFYear1 + FCFYear2 + FCFYear3 + FCFYear4 + FCFYear5


