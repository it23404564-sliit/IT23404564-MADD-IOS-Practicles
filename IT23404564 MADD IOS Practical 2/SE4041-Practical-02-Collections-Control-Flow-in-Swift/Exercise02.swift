import Foundation


var towns: Set<String> = ["Malabe", "Kandy", "Galle"]

print("Original Towns:")
print(towns.sorted())


towns.insert("Jaffna")
towns.insert("Kandy")

print("\nAfter Inserting Towns:")
print(towns.sorted())
print("Number of Towns:", towns.count)


print("\nMembership Checking:")
print("Contains Kandy:", towns.contains("Kandy"))
print("Contains Colombo:", towns.contains("Colombo"))


towns.remove("Galle")

print("\nAfter Removing Galle:")
print(towns.sorted())


let swiftClass: Set<String> = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set<String> = ["Nimali", "Ruwan", "Sanduni"]

print("\nSet Operations:")
print("Union:", swiftClass.union(kotlinClass).sorted())
print("Intersection:", swiftClass.intersection(kotlinClass).sorted())
print("Swift Only:", swiftClass.subtracting(kotlinClass).sorted())
print("Symmetric Difference:", swiftClass.symmetricDifference(kotlinClass).sorted())


let mobileDevelopmentStudents: Set<String> = [
"Amal", "Nimali", "Ruwan", "Sanduni"
]

let gameTechnologyStudents: Set<String> = [
"Nimali", "Ruwan", "Kasun", "Tharushi"
]

print("\nActivity 2 - Student Sets:")
print("All Students:")
print(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())

print("\nStudents Taking Both Modules:")
print(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())

print("\nOnly Mobile Development:")
print(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())

print("\nStudents Taking Only One Module:")
print(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())
