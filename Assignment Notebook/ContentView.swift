//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Tessa Murray on 1/28/25.
//

import SwiftUI

struct AssignmentItem: Identifiable {
    var id = UUID()
    var course = String()
    var description = String()
    var dueDate = Date()
}
struct ContentView: View {
    @State private var assignmentItems = [AssignmentItem(course: "Algebra", description: "Linear Equation", dueDate: Date()), AssignmentItem(course: "History", description: "Civil War Paper", dueDate: Date()), AssignmentItem(course: "Science", description: "Atomic Bomb Lab", dueDate: Date())]
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentItems) { item in HStack {
                    VStack(alignment: .leading, content: {
                        Text(item.course).font(.headline)
                        Text(item.description)
                    })
                    Spacer()
                    Text(item.dueDate, style: .date)
                }
                }
                .onMove(perform: { indices, newOffset in assignmentItems.move(fromOffsets: indices, toOffset: newOffset)})
                
                .onDelete(perform: { indexSet in assignmentItems.remove(atOffsets: indexSet)})
            }
            .navigationBarTitle("Assignment Notebook", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
