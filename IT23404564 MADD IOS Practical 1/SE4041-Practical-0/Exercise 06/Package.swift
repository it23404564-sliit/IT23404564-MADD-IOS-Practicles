// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Exercise 06"
)
var middleName: String? = "Nimal"
print(middleName as Any)

// Step 2 - Set the Optional to nil
middleName = nil
print(middleName as Any)

// Step 3 - Force Unwrapping
var studentName: String? = "Kamal"
print(studentName!)

// Step 4 - Safe Unwrapping with if let
if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is not available")
}

// Test if let with nil
studentName = nil

if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is not available")
}

// Step 5 - Unwrapping Multiple Optionals
var firstName: String? = "Kamal"
var lastName: String? = "Perera"

if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}

// Test multiple optionals with nil
lastName = nil

if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}

// Step 6 - Nil-Coalescing Operator
var nickname: String? = nil

let displayName = nickname ?? "No Nickname"
print(displayName)

// Test with a value
nickname = "Kama"

let displayName2 = nickname ?? "No Nickname"
print(displayName2)

// Activity 5 - Optional Student Details
var studentFirstName: String? = "Kamal"
var studentLastName: String? = "Perera"
var email: String? = nil

if let first = studentFirstName, let last = studentLastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}

let emailDisplay = email ?? "Not Provided"
print("Email: \(emailDisplay)")


