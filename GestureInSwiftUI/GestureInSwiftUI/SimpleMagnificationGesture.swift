//
//  SimpleMagnificationGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/20.
//

import SwiftUI

struct SimpleMagnificationGesture: View {
    @State var currentAmount: CGFloat = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .padding(40)
            .background(Color.red.cornerRadius(10))
            .scaleEffect(1 + currentAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
            )
    }
}

struct MyMagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimpleMagnificationGesture()
    }
}
