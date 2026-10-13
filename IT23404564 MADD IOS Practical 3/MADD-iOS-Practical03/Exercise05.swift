import Foundation


enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let currentStatus = ModuleStatus.inProgress
print("Module status: \(currentStatus.rawValue)")


enum Direction {
    case north, south, east, west
}

var direction = Direction.north
print("Direction: \(direction)")

direction = .south
print("Updated direction: \(direction)")


enum Status {
    case registered, pending, rejected
}

let studentStatus = Status.registered

switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}


enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print("Grade: \(grade.rawValue)")

