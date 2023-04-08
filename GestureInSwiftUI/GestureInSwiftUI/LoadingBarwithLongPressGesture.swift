//
//  LoadingBarwithLongPressGesture.swift
//  GestureInSwiftUI
//
//  Created by 김동욱 on 2023/04/08.
//

import SwiftUI

struct LoadingBarwithLongPressGesture: View {
    @State var isLoading = false
    @State var isSucceeded = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(isSucceeded ? Color.green : Color.blue)
                .frame(maxWidth: isLoading ? .infinity : .zero)
                .frame(height: 50)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            HStack {
                Text("CLICK HERE")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { isPressing in
                        // start of press -> min duration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1)) {
                                isLoading = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSucceeded {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        isLoading = false
                                    }
                                }
                            }
                        }
                    } perform: {
                        // at the min duration
                        print("Succeeded!")
                        isSucceeded = true
                    }
                
                Text("RESET")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1)) {
                            isLoading = false
                            isSucceeded = false
                        }
                    }
            }
        }
    }
}

struct LoadingBarwithLongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LoadingBarwithLongPressGesture()
    }
}
