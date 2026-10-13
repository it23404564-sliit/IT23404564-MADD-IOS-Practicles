import Foundation



var students: [String: Int] = [
    "Amal": 85,
    "Kasun": 62,
    "Nimali": 92,
    "Ruwan": 48,
    "Sanduni": 76
]

print("================================")
print("   STUDENT PERFORMANCE MANAGER")
print("================================")


print("\n===== STUDENT MARKS =====")

for name in students.keys.sorted() {
    if let mark = students[name] {
        print(name + ": " + String(mark))
    }
}


print("\n===== GRADES AWARDED =====")

var gradesAwarded: Set<String> = []
var passedStudents: [String] = []
var totalMarks = 0

for name in students.keys.sorted() {
    if let mark = students[name] {
        let grade: String

        switch mark {
        case 90...100:
            grade = "A"
        case 80..<90:
            grade = "B"
        case 70..<80:
            grade = "C"
        case 60..<70:
            grade = "D"
        default:
            grade = "F"
        }

        print(name + ": " + String(mark) + " - Grade " + grade)
        gradesAwarded.insert(grade)

        if mark >= 50 {
            passedStudents.append(name)
        }

        totalMarks += mark
    }
}


print("\n===== PASSED STUDENTS =====")

for name in passedStudents.sorted() {
    print(name)
}


print("\n===== UNIQUE GRADES =====")
print(gradesAwarded.sorted())


let allMarks = Array(students.values)

if !allMarks.isEmpty {
    let average = Double(totalMarks) / Double(allMarks.count)

    print("\n===== CLASS STATISTICS =====")
    print("Total students: " + String(students.count))
    print("Total marks: " + String(totalMarks))
    print("Average marks: " + String(format: "%.2f", average))

    if let highest = allMarks.max() {
        print("Highest mark: " + String(highest))
    }

    if let lowest = allMarks.min() {
        print("Lowest mark: " + String(lowest))
    }
}


let passCount = students.values.filter { $0 >= 50 }.count
let failCount = students.count - passCount

print("\n===== PASS / FAIL SUMMARY =====")
print("Passed: " + String(passCount))
print("Failed: " + String(failCount))


print("\n===== STUDENT SEARCH =====")

let searchName = "Nimali"

if let mark = students[searchName] {
    print(searchName + " scored " + String(mark))
} else {
    print(searchName + " was not found")
}

let missingName = "Tharushi"

if let mark = students[missingName] {
    print(missingName + " scored " + String(mark))
} else {
    print(missingName + " was not found")
}

print("\n===== END OF REPORT =====")
