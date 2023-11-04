//
//  TodoListViewModel.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//

import Foundation

class TodoListViewModel: ObservableObject {
    @Published var todoList: [TodoModel] = []
    
    init(){
        todoList.append(contentsOf: [
            TodoModel(title: "タスク1", isCompleted: false),
            TodoModel(title: "タスク2", isCompleted: false),
            TodoModel(title: "タスク3", isCompleted: false),
            TodoModel(title: "タスク4", isCompleted: false),
            TodoModel(title: "タスク5", isCompleted: false)
        ])
    }
    
    func onDelete(indexSet: IndexSet) {
        todoList.remove(atOffsets: indexSet)
    }
    
    func addItem(item: TodoModel) {
        todoList.append(item)
    }
    
    func updateItem(item: TodoModel) {
        if let index = todoList.firstIndex(where: {$0.id == item.id}) {
            todoList[index] = item.update()
        }
    }
}


