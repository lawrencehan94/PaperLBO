class Comp {
	var name: String
	var ticker: String
	
	init(_ nameInput: String, _ tickerInput: String) {
		name = nameInput
		ticker = tickerInput
	}
}

var comps = [Comp]()

func addNASDAQComps() {
comps.append(Comp("1347 Property Insurance Holdings", "PIH"))


}

addNASDAQComps()

for comp in comps {
	print(comp.name)
}
