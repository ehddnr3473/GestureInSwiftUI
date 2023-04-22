//
//  SignUpViewWithDragGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/21.
//

import SwiftUI

struct SignUpViewWithDragGesture: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            SignUpView()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct SignUpViewWithDragGesture_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewWithDragGesture()
    }
}

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "chevron.up")
                .padding(.top)
            
            Text("Sign up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("This is the simple drag gesture app.")
                .padding()
            
            Text("CREATE AN ACCOUNT")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
    }
}
