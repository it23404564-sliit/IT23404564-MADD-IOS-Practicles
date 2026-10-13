import Foundation


struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true

    // Computed property
    var grade: String {
        switch mark {
        case 75...100:
            return "A"
        case 65..<75:
            return "B"
        case 50..<65:
            return "C"
        default:
            return "F"
        }
    }

    // Method
    func displayDetails() {
        print("\(name) received \(mark) marks")
    }
}

let student = Student(name: "Amal", mark: 72)

print("Name: \(student.name)")
print("Mark: \(student.mark)")
print("Registered: \(student.registered)")
print("Grade: \(student.grade)")
student.displayDetails()


struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()

print("Counter: \(counter.count)")


class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()


struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print("Struct first: \(firstPoint.x)")
print("Struct second: \(secondPoint.x)")


class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print("Class first: \(firstCounter.count)")
print("Class second: \(secondCounter.count)")

