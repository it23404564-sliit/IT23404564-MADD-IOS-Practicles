import Foundation

var marks: [String: Int] = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]

print("Original Student Marks:")
print(marks)

print("\nRetrieve Amal's Mark:")
print(marks["Amal"] as Any)

print("\nSafe Retrieval:")
print("Amal: " + String(marks["Amal"] ?? 0))
print("Kasun: " + String(marks["Kasun"] ?? 0))

print("\nOptional Binding:")
if let mark = marks["Nimali"] {
    print("Nimali scored " + String(mark))
} else {
    print("Student not found")
}

marks["Ruwan"] = 78
marks["Amal"] = 95
marks.removeValue(forKey: "Nimali")

print("\nUpdated Student Marks:")
for name in marks.keys.sorted() {
    print(name + ": " + String(marks[name] ?? 0))
}

var phoneBook: [String: String] = [
    "Amal": "0771234567",
    "Kasun": "0712345678",
    "Nimali": "0763456789"
]

print("\nPhone Book:")
for name in phoneBook.keys.sorted() {
    print(name + ": " + (phoneBook[name] ?? "Unknown"))
}

phoneBook["Saman"] = "0754567890"
phoneBook["Amal"] = "0701112222"

print("\nUpdated Phone Book:")
for name in phoneBook.keys.sorted() {
    print(name + ": " + (phoneBook[name] ?? "Unknown"))
}

let searchName = "Nimali"
print("\nSearch Contact:")
if let phoneNumber = phoneBook[searchName] {
    print(searchName + ": " + phoneNumber)
} else {
    print("Contact not found")
}

let missingName = "Ruwan"
if let phoneNumber = phoneBook[missingName] {
    print(missingName + ": " + phoneNumber)
} else {
    print("Contact not found")
}
