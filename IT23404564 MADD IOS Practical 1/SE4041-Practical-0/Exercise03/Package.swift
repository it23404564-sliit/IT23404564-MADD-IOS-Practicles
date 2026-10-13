import PackageDescription

let package = Package(
    name: "Exercise03"
)


let students = 42
let average = 3.75

let result = Double(students) + average

print(result)



let a = 17
let b = 5

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)

// Decimal division
let decimalResult = Double(a) / Double(b)

print(decimalResult)




let mark1 = 75
let mark2 = 82
let mark3 = 68

let total = mark1 + mark2 + mark3
let markAverage = Double(total) / 3.0

print("Total: \(total)")
print("Average: \(markAverage)")



let number = 28

print(number % 2)
