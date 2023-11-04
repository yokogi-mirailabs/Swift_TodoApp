//
//  TodoListRowView.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//

import SwiftUI

struct TodoListRowView: View {
    
    var todo: TodoModel
    
    var body: some View {
        NavigationStack {
            HStack() {
                Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                    .foregroundColor(todo.isCompleted ? .green : .red)
                Text(todo.title)
                    .font(.title2)
                Spacer()
            }
            .padding()
        }
    }
}

struct TodoListRowView_Previews: PreviewProvider {
    static var previews: some View {
        let todo = TodoModel(id: "1", title: "title", isCompleted: true)
        NavigationView{
            TodoListRowView(todo: todo)
        }
    }
}

