let discountRate = 0.12
let PGR = 0.03
let taxRate = 0.35
let depreciationRevenue = 0.20
let capexRevenue = 0.15
let NWCRevenue = 0.10

let onePlusDR = 1.00 + 0.12

let revenue0 = 80
let growth1 = 0.25
let growth10 = 0.03
let margin1 = 0.40
let margin10 = 0.45

func discountRate(discountRate: Double, PGR: Double, taxRate: Double, depreciationRevenue: Double, capexRevenue: Double, NWCRevenue: Double, onePlusDR: Double, revenue0: Double, growth1: Double, growth10: Double, margin1: Double, margin10: Double) -> (pvOfFCF: Double, pvOfTV: Double, ev: Double, tvEBITDA: Double) {
	
	//Growth
	let growthDifference = (growth10 - growth1)/10.0
	
	let growth2 = growth1 + growthDifference
	let growth3 = growth2 + growthDifference
	let growth4 = growth3 + growthDifference
	let growth5 = growth4 + growthDifference
	let growth6 = growth5 + growthDifference
	let growth7 = growth6 + growthDifference
	let growth8 = growth7 + growthDifference
	let growth9 = growth8 + growthDifference
	let growth10 = growth9 + growthDifference
	
	//Revenue
	let revenue1 = revenue0 * (1 + growth1)
	let revenue2 = revenue1 * (1 + growth2)
	let revenue3 = revenue2 * (1 + growth3)
	let revenue4 = revenue3 * (1 + growth4)
	let revenue5 = revenue4 * (1 + growth5)
	let revenue6 = revenue5 * (1 + growth6)
	let revenue7 = revenue6 * (1 + growth7)
	let revenue8 = revenue7 * (1 + growth8)
	let revenue9 = revenue8 * (1 + growth9)
	let revenue10 = revenue9 * (1 + growth10)
	
	//Margins
	let marginDifference = (margin10 - margin1)/10.0
	
	let margin2 = margin1 + marginDifference
	let margin3 = margin2 + marginDifference
	let margin4 = margin3 + marginDifference
	let margin5 = margin4 + marginDifference
	let margin6 = margin5 + marginDifference
	let margin7 = margin6 + marginDifference
	let margin8 = margin7 + marginDifference
	let margin9 = margin8 + marginDifference
	let margin10 = margin9 + marginDifference
	
	//EBITDA
	let EBITDA1 = margin1*revenue1
	let EBITDA2 = margin2*revenue2
	let EBITDA3 = margin3*revenue3
	let EBITDA4 = margin4*revenue4
	let EBITDA5 = margin5*revenue5
	let EBITDA6 = margin6*revenue6
	let EBITDA7 = margin7*revenue7
	let EBITDA8 = margin8*revenue8
	let EBITDA9 = margin9*revenue9
	let EBITDA10 = margin10*revenue10
	
	func getPVofFCF(revenue: Double, EBITDA: Double, discountYears: Double) -> Double {
		
		let depreciation = revenue*depreciationRevenue
		let EBIT = EBITDA - depreciation
		let taxes = taxRate*EBIT
		let capex = capexRevenue*revenue
		let FCF = EBITDA - taxes - capex
		let discountRateCompounded
		let pvOfFCF = FCF*discountFactor	
		
		return pvOfFCF
	} 
	
	let pvOfFCF = 5.0
	let pvOfTV = 10.0
	let ev = 15.0
	let tvEBITDA = 20.0
	return (pvOfFCF, pvOfTV, ev, tvEBITDA)
	
}

