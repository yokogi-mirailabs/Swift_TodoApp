//
//  ContentView.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            MapView()
//                .frame(height: 300)
//
//            CircleImage()
//                .offset(y: -130)
//                .padding(.bottom, -130)
//
//            VStack (alignment: .leading){
//                Text("Hello, world!")
//                    .font(.title)
//                    .foregroundColor(.green)
//                HStack {
//                    Text("Joshua Tree National Park")
//                        .font(.subheadline)
//                    Text("California")
//                        .font(.subheadline)
//                }
//
//                Divider()
//
//
//                Text("About Turtle Rock")
//                    .font(.title2)
//                Text("Descriptive text goes here.")
//            }
//            .padding()
//
//            Spacer()
//        }
        TodoListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
