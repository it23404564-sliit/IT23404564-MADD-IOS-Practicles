import Foundation


let marks = [72, 45, 65, 48, 90]

let passed = marks.filter { $0 >= 50 }
print("Passed marks: \(passed)")


let increasedMarks = marks.map { $0 + 5 }
print("Increased marks: \(increasedMarks)")


let total = marks.reduce(0) { $0 + $1 }
print("Total: \(total)")


let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let expensivePrices = prices.filter { $0 > 100 }
print("Prices above 100: \(expensivePrices)")


let increasedPrices = prices.map { $0 + 10 }
print("Prices increased by 10: \(increasedPrices)")


let totalPrice = prices.reduce(0.0) { $0 + $1 }
print("Total price: \(totalPrice)")

