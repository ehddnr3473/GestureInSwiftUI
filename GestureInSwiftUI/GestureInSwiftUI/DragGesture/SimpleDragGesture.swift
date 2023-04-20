//
//  SimpleDragGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/21.
//

import SwiftUI

struct SimpleDragGesture: View {
    @State var offset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.spring()) {
                            offset = value.translation
                        }
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                    }
            )
    }
}

struct SimpleDragGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimpleDragGesture()
    }
}
