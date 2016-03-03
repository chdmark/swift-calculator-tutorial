class TipCalculator {
	let total: Double
	let taxPct: Double
	let subtotal: Double

	init(total: Double, taxPct: Double) {
		self.total = total
		self.taxPct = taxPct
		subtotal = total / (taxPct + 1)
	}

	func calcTipWithTipPct(tipPct: Double) -> Double {
		return subtotal * tipPct
	}
	func printPossibleTips() {
		print("15%: \(calcTipWithTipPct(0.15))")
		print("18%: \(calcTipWithTipPct(0.18))")
		print("20%: \(calcTipWithTipPct(0.20))")
	}
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()