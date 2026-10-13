import Foundation


let dayNumber = 3

print("===== DAY OF THE WEEK =====")

switch dayNumber {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wednesday")
case 4:
    print("Thursday")
case 5:
    print("Friday")
case 6:
    print("Saturday")
case 7:
    print("Sunday")
default:
    print("Invalid day number")
}


let marks = [95, 82, 74, 65, 45]

print("\n===== STUDENT GRADES =====")

for mark in marks {
    print("Marks: " + String(mark))

    switch mark {
    case 90...100:
        print("Grade: A")
    case 80..<90:
        print("Grade: B")
    case 70..<80:
        print("Grade: C")
    case 60..<70:
        print("Grade: D")
    case 0..<60:
        print("Grade: F")
    default:
        print("Invalid marks")
    }

    print("")
}


let temperature = 32

print("===== TEMPERATURE CHECK =====")
print("Temperature: " + String(temperature) + " degrees Celsius")

switch temperature {
case ..<0:
    print("Freezing")
case 0..<15:
    print("Cold")
case 15..<25:
    print("Moderate")
case 25...35:
    print("Warm")
default:
    print("Hot")
}
