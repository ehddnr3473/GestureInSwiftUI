//
//  MyMagnificationGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/20.
//

import SwiftUI

struct SimpleMagnificationGesture: View {
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .padding(40)
            .background(Color.red.cornerRadius(10))
            .scaleEffect(1 + currentAmount + lastAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
                        lastAmount += currentAmount
                        currentAmount = 0
                    }
            )
    }
}

struct SimpleMagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimpleMagnificationGesture()
    }
}
