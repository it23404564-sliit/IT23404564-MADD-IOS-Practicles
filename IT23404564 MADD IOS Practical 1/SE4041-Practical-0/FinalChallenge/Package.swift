// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FinalChallenge"
)

// Part A - Student Information

let studentName = "Hasitha Lakshan"
let studentID = "IT23404564"
let moduleCode = "SE4041"

let assignmentMark = 75.0
let examMark = 68.0

// Part B - Calculate the Final Mark

let finalMark = (assignmentMark * 0.40) + (examMark * 0.60)

// Part C - Determine Pass Status

let passed = finalMark >= 50.0

// Part D - Student Email

var email: String? = "hasitha@example.com"

// Display student result

print("==============================")
print("STUDENT RESULT")
print("==============================")
print("Student Name : \(studentName)")
print("Student ID : \(studentID)")
print("Module : \(moduleCode)")
print("Assignment Mark : \(assignmentMark)")
print("Exam Mark : \(examMark)")
print("Final Mark : \(finalMark)")
print("Passed : \(passed)")

let emailDisplay = email ?? "Not Provided"
print("Email : \(emailDisplay)")


// Test 2 - Email is not available

email = nil

print("==============================")
print("STUDENT RESULT")
print("==============================")
print("Student Name : \(studentName)")
print("Student ID : \(studentID)")
print("Module : \(moduleCode)")
print("Assignment Mark : \(assignmentMark)")
print("Exam Mark : \(examMark)")
print("Final Mark : \(finalMark)")
print("Passed : \(passed)")

let emailDisplay2 = email ?? "Not Provided"
print("Email : \(emailDisplay2)")
