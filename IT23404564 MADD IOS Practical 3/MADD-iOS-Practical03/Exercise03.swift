import Foundation

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    guard !marks.isEmpty else {
        return (0, 0, 0.0)
    }

    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])

print("Minimum: \(result.minimum)")
print("Maximum: \(result.maximum)")
print("Average: \(result.average)")

let (low, high, average) = summary(of: [72, 65, 48, 90])

print("Low: \(low)")
print("High: \(high)")
print("Average: \(average)")

func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    guard !marks.isEmpty else {
        return (0, 0.0)
    }

    let total = marks.reduce(0, +)
    let average = Double(total) / Double(marks.count)

    return (total, average)
}

let analysis = analyzeMarks([60, 70, 80, 90])

print("Total: \(analysis.total)")
print("Class Average: \(analysis.average)")

