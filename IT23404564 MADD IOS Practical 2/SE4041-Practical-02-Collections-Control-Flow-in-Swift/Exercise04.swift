import Foundation


let attendance = 78

print("===== ATTENDANCE EVALUATION =====")
print("Attendance: " + String(attendance) + "%")

if attendance >= 90 {
    print("Excellent attendance")
} else if attendance >= 80 {
    print("Good attendance")
} else if attendance >= 70 {
    print("Acceptable attendance")
} else {
    print("Low attendance")
}


let testAttendances = [95, 85, 78, 60]

print("\n===== TESTING MULTIPLE STUDENTS =====")

for attendance in testAttendances {
    print("\nAttendance: " + String(attendance) + "%")

    if attendance >= 90 {
        print("Excellent attendance")
    } else if attendance >= 80 {
        print("Good attendance")
    } else if attendance >= 70 {
        print("Acceptable attendance")
    } else {
        print("Low attendance")
    }
}
