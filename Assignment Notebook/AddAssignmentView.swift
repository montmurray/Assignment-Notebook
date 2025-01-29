//
//  AddAssignmentView.swift
//  Assignment Notebook
//
//  Created by Tessa Murray on 1/29/25.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode; static let courses = ["Calculus", "History", "Chemistry", "Psychology", "Computer Science", "English", "Economics"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Course", selection: $course) {
                    ForEach(Self.courses, id: \.self) { course in Text(course) }
                }
                .navigationBarTitle("Add New Assignment", displayMode: .inline)
                .navigationBarItems(trailing: Button("Save") {
                    if course.count > 0 && description.count > 0 {
                        let item = AssignmentItem(id: UUID(), course: course, dueDate: dueDate)
                        assignmentList.items.append(item)
                        presentationMode.wrappedValue.dismiss()
                    }
                })
                TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
            }
        }
    }
}

#Preview {
    AddAssignmentView(assignmentList: AssignmentList())
}
