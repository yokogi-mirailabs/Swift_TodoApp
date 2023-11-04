//
//  AddTodoView.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//

import SwiftUI

struct AddTodoView: View {
    @Environment(\.dismiss) var dismiss
    
    let addItem: (_ item: TodoModel) -> Void
    let id: String = UUID().uuidString
    @State var title: String = ""
    
    var body: some View {
        VStack() {
            ScrollView {
                TextField("タスクを入力してください", text: $title)
                    .padding()
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(12)
                    .onSubmit {
                        onSaveClick()
                    }
                Button {
                    onSaveClick()
                } label: {
                    Text("保存する")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .background(.primary)
                }
            }
        }
        .padding(14)
        .navigationTitle("タスク追加")
    }
    
    func onSaveClick() {
        let item = TodoModel(title: title, isCompleted: false)
        addItem(item)
        dismiss()
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTodoView{ todo in
                
            }
            
        }
    }
}

