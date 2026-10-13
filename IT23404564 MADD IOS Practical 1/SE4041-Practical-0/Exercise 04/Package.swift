// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Exercise 04"
)
let mark = 72

print(mark == 72)
print(mark != 72)
print(mark > 50)
print(mark < 50)
print(mark >= 50)
print(mark <= 100)


// Step 2 – Logical AND Operator

let mark2 = 68
let submittedAssignment = true

let passed = mark2 >= 50 && submittedAssignment

print(passed)


// Step 3 – Logical OR Operator

let hasStudentID = false
let hasTemporaryPass = true

let canEnter = hasStudentID || hasTemporaryPass

print(canEnter)


// Step 4 – Logical NOT Operator

let isAbsent = false

print(!isAbsent)


// Activity 3 – Student Eligibility

let examMark = 60
let attendance = 85

let eligible = examMark >= 50 && attendance >= 80

print(eligible)
