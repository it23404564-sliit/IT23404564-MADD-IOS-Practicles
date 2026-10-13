
import SwiftUI

struct ContentView: View {
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true),
        TaskItem(title: "Drink Water", completed: false),
        TaskItem(title: "Read Notes", completed: false),
        TaskItem(title: "Call Home", completed: true)
    ]

    private var completedCount: Int {
        tasks.filter { $0.completed }.count
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 6) {
                Text("Quick Tasks")
                    .font(.headline)
                    .bold()

                
                Text("\(completedCount) / \(tasks.count) Completed")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("\(Int(Double(completedCount) / Double(tasks.count) * 100))% Complete")
                    .font(.caption2)
                    .foregroundStyle(.green)


                List(tasks.indices, id: \.self) { index in
                    HStack(spacing: 6) {
                        Button {
                            tasks[index].completed.toggle()
                        } label: {
                            Image(
                                systemName: tasks[index].completed
                                    ? "checkmark.circle.fill"
                                    : "circle"
                            )
                            .foregroundStyle(
                                tasks[index].completed ? .green : .secondary
                            )
                        }
                        .buttonStyle(.plain)

                        NavigationLink {
                            TaskDetailView(task: tasks[index])
                        } label: {
                            Text(tasks[index].title)
                                .font(.caption)
                        }
                    }
                }
                .listStyle(.carousel)
            }
        }
    }
}

#Preview {
    ContentView()
}
