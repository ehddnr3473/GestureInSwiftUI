//
//  TapGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/07.
//

import SwiftUI

struct TapGesture: View {
    @State var isTapped = false
    
    var body: some View {
        Text(isTapped ? "TAPPED" : "NOT TAPPED")
            .font(.title)
            .frame(width: 200, height: 50)
            .background(isTapped ? Color.pink : Color.blue)
            .cornerRadius(10)
            .onTapGesture {
                isTapped.toggle()
            }
    }
}

struct TapGesture_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture()
    }
}
