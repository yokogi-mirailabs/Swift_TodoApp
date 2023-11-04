//
//  SwiftUIView.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("flower")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
