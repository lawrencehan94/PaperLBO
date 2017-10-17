// Last Year Inputs
let rev0 = 80.0
let growth0 = 0.40
let margin0 = 0.40 //EBIT Margin

// Target Year Inputs
let growth6 = 0.05
let margin6 = 0.45 //EBIT Margin

// Cash Flow and Tax Rate Assumptions
let capexRev = 0.15
let nwcRev = 0.05
let DARev = 0.20 //this would automatically be set equal to capex as a % of revenue when the user inputs here
let taxRate = 0.40

// Purchase Price Assumptions
let entryMult = 4.0
let exitMult = 6.0
let percentDebt = 0.40
let interestRate = 0.10

// Growth Calculation
let growthChange = (growth6-growth0)/6

let growth1 = growth0 + growthChange
let growth2 = growth1 + growthChange
let growth3 = growth2 + growthChange
let growth4 = growth3 + growthChange
let growth5 = growth4 + growthChange

// Revenue Calculation
let rev1 = rev0 * (1+growth1)
let rev2 = rev1 * (1+growth2)
let rev3 = rev2 * (1+growth3)
let rev4 = rev3 * (1+growth4)
let rev5 = rev4 * (1+growth5)
let rev6 = rev5 * (1+growth6)

// Margin Calculation
let marginChange = (margin6 - margin0)/6

let margin1 = margin0 + marginChange
let margin2 = margin1 + marginChange
let margin3 = margin2 + marginChange
let margin4 = margin3 + marginChange
let margin5 = margin4 + marginChange

// EBIT Calculation
let ebit0 = margin0 * rev0
let ebit1 = margin1 * rev1
let ebit2 = margin2 * rev2
let ebit3 = margin3 * rev3
let ebit4 = margin4 * rev4
let ebit5 = margin5 * rev5
let ebit6 = margin6 * rev6

// EBITDA Calculation
let ebitda0 = ebit0 + DARev*rev0
let ebitda1 = ebit1 + DARev*rev1
let ebitda2 = ebit2 + DARev*rev2
let ebitda3 = ebit3 + DARev*rev3
let ebitda4 = ebit4 + DARev*rev4
let ebitda5 = ebit5 + DARev*rev5
let ebitda6 = ebit6 + DARev*rev6

// NWC Calculation
let nwc0 = nwcRev * rev0
let nwc1 = nwcRev * rev1
let nwc2 = nwcRev * rev2
let nwc3 = nwcRev * rev3
let nwc4 = nwcRev * rev4
let nwc5 = nwcRev * rev5
let nwc6 = nwcRev * rev6

// Purchase Price Calculation
let entryEV = ebitda1 * entryMult
let entryDebt = percentDebt * entryEV
let entryEquity = (1-percentDebt) * entryEV
let exitEV = ebitda6 * exitMult

// Get FCF Calculation
func getFCF(_ revenue: Double, _ ebitda: Double, _ lastYearNWC: Double, _ nextYearNWC: Double) -> Double {
	let interest = interestRate * entryDebt
	let taxes = taxRate*(ebitda - (DARev*revenue))
	let incNWC = nextYearNWC - lastYearNWC
	let capex = capexRev*revenue
	let FCF = ebitda-interest-taxes-incNWC-capex
	
	return FCF
}

// Return Calculations
let FCF1 = getFCF(rev1, ebitda1, nwc0, nwc1)
let FCF2 = getFCF(rev2, ebitda2, nwc1, nwc2)
let FCF3 = getFCF(rev3, ebitda3, nwc2, nwc3)
let FCF4 = getFCF(rev4, ebitda4, nwc3, nwc4)
let FCF5 = getFCF(rev5, ebitda5, nwc4, nwc5)

let totalFCF = FCF1+FCF2+FCF3+FCF4+FCF5

let exitDebt = entryDebt - totalFCF
let exitEquity = exitEV - exitDebt
let MoM = exitEquity / entryEquity
print(MoM)
