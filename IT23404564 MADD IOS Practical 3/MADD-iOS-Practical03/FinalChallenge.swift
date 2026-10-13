import Foundation


enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}


struct Student {
    var studentID: String
    var name: String
    var mark: Int

    // Computed property to calculate the grade
    var grade: Grade {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .bPlus
        case 65..<70:
            return .b
        case 60..<65:
            return .bMinus
        case 55..<60:
            return .cPlus
        case 45..<55:
            return .c
        case 40..<45:
            return .cMinus
        default:
            return .f
        }
    }

    
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("--------------------")
    }
}


let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]


print("=== ALL STUDENTS ===")

for student in students {
    student.displayDetails()
}


let passedStudents = students.filter { $0.mark >= 50 }

print("=== PASSED STUDENTS ===")

for student in passedStudents {
    print(student.name)
}


let studentNames = students.map { $0.name }

print("=== STUDENT NAMES ===")
print(studentNames)


let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)

print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")

