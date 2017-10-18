class Company {
	
	var ticker: String
	var company: String
	var value: Double?
	
	init(_ tickerInput: String, _ companyInput: String) {
		ticker = tickerInput
		company = companyInput
	}
	
}

func addLargeDiversified() -> [Company] {
	var companies = [Company]()
	companies.append(Company("GOOGL", "Alphabet"))
	companies.append(Company("AAPL", "Apple"))
	companies.append(Company("MSFT", "Microsoft"))
	companies.append(Company("ORCL", "Oracle"))
	companies.append(Company("IBM", "IBM"))
	return companies
}

var selectedList = addLargeDiversified()

var tickersToLookUp: String = ""

for company in selectedList {
	tickersToLookUp.append("\(company.ticker),")	
}

print(tickersToLookUp)

//https://api.intrinio.com/data_point?identifier=\(identifier)&item=\(item)

//https://api.intrinio.com/data_point?identifier=\AAPL,MSFT&item=\evtonextyearrevenue

babf6dca6f14d9dd9d5d9cefbb74cb23
e1fd3e208302dff589f3748c88b0f6f3
