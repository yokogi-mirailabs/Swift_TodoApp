//
//  TodoListView.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//


import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var todoListVM = TodoListViewModel()
    
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(todoListVM.todoList) {item in
                    TodoListRowView(
                        todo: item
                    )
                    .padding(-12.0)
                    .onTapGesture {
                        todoListVM.updateItem(item: item)
                    }
                }
                .onDelete(perform: todoListVM.onDelete)
            }
            .navigationTitle("Todo List")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination: {
                AddTodoView { todo in
                    todoListVM.addItem(item: todo)
                }
            }, label: {
                Text("Add items")
            }))
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TodoListView()
        }
    }
}

