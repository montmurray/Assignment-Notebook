//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Tessa Murray on 1/28/25.
//
import SwiftUI

class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(course: "Calculus", description: "Related Rates Quiz", dueDate: Date()), AssignmentItem(course: "History", description: "Ottoman Empire Paper", dueDate: Date()), AssignmentItem(course: "Chemistry", description: "Periodic Table", dueDate: Date()), AssignmentItem(course: "Pyschology", description: "Two-Factor Theory Discussion", dueDate: Date()), AssignmentItem(course: "Computer Science", description: "Assignment Notebook", dueDate: Date())]
    }
