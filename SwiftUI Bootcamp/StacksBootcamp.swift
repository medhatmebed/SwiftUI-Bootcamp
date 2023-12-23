//
//  StacksBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack -> Vertical
    // HStack -> Horizontal
    // ZStack -> zIndex (back to front)
    
    
    var body: some View {
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }//: ZSTACK
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background {
                    Circle()
                        .frame(width: 100, height: 100)
                }
            
        }//: VSTACK
    }
}

#Preview {
    StacksBootcamp()
}
