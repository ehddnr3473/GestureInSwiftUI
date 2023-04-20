//
//  LongPressGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/07.
//

import SwiftUI

struct LongPressGesture: View {
    @State var isLongPressed = false
    
    var body: some View {
        Text(isLongPressed ? "LONG PRESSED" : "NOT LONG PRESSED")
            .font(.title)
            .frame(width: 300, height: 50)
            .background(isLongPressed ? Color.pink : Color.blue)
            .cornerRadius(10)
            .onLongPressGesture(minimumDuration: 3.0, maximumDistance: 100) {
                isLongPressed.toggle()
            }
    }
}

struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture()
    }
}
