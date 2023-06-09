//
//  SimpleViewWithMagnificationGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/20.
//

import SwiftUI

struct SimpleViewWithMagnificationGesture: View {
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 35, height: 35)
                Text("Yeolmok")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Rectangle()
                .frame(height: 300)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            currentAmount = value - 1
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                currentAmount = 0
                            }
                        }
                )
            
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            
            Text("Zoom in & out on the picture above.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
    }
}

struct SimpleViewWithMagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimpleViewWithMagnificationGesture()
    }
}
