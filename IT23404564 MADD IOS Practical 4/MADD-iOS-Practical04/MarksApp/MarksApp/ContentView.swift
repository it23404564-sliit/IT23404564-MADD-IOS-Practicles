
import SwiftUI

struct Student: Identifiable {
    let id = UUID()
    var name: String
    var mark: Int

    var passed: Bool {
        mark >= 50
    }
}

struct ContentView: View {
    @State private var students: [Student] = []
    @State private var studentName = ""
    @State private var markText = ""
    @State private var errorMessage = ""

    var passedCount: Int {
        students.filter { $0.passed }.count
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Text("Student Marks App")
                    .font(.largeTitle)
                    .bold()

                TextField("Enter student name", text: $studentName)
                    .textFieldStyle(.roundedBorder)

                TextField("Enter mark (0–100)", text: $markText)
                    .textFieldStyle(.roundedBorder)
            

                Button("Add Student") {
                    addStudent()
                }
                .buttonStyle(.borderedProminent)

                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundStyle(.red)
                        .font(.caption)
                }

                Divider()

                Text("Total Students: \(students.count)")
                    .font(.headline)

                Text("Students Passed: \(passedCount)")
                    .font(.headline)
                    .foregroundStyle(.green)

                List(students) { student in
                    NavigationLink {
                        StudentDetailView(student: student)
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(student.name)
                                    .font(.headline)

                                Text("Mark: \(student.mark)")
                                    .font(.subheadline)
                            }

                            Spacer()

                            Text(student.passed ? "Pass" : "Fail")
                                .bold()
                                .foregroundStyle(
                                    student.passed ? .green : .red
                                )
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("SE4041")
        }
    }

    private func addStudent() {
        let trimmedName = studentName.trimmingCharacters(
            in: .whitespacesAndNewlines
        )

        guard !trimmedName.isEmpty else {
            errorMessage = "Please enter a student name."
            return
        }

        guard let mark = Int(markText) else {
            errorMessage = "Please enter a valid mark."
            return
        }

        guard (0...100).contains(mark) else {
            errorMessage = "Mark must be between 0 and 100."
            return
        }

        students.append(
            Student(name: trimmedName, mark: mark)
        )

        studentName = ""
        markText = ""
        errorMessage = ""
    }
}

#Preview {
    ContentView()
}

