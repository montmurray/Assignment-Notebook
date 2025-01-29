//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Tessa Murray on 1/28/25.
//
import SwiftUI

class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(course: "Algebra", description: "Linear Equation", dueDate: Date()), AssignmentItem(course: "History", description: "Civil War Paper", dueDate: Date()), AssignmentItem(course: "Science", description: "Atomic Bomb Lab", dueDate: Date())]
    }
