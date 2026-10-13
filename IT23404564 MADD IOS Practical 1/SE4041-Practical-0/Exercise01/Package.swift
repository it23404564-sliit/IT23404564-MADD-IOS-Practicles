// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "Exercise01",
    targets: [
        .executableTarget(
            name: "Exercise01"
        )
    ]
)

let moduleCode = "SE4041"
let moduleName = "Mobile Application Design and Development"
let studentName = "Perera"
let studentAge = 24

var numberOfStudents = 40

numberOfStudents += 5

print(moduleCode)
print(moduleName)
print(studentName)
print(studentAge)
print(numberOfStudents)
