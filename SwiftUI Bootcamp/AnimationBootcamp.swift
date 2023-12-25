//
//  AnimationBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/25/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated = false
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear, value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn, value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut, value: isAnimated)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(duration: 2.0, bounce: 0.5), value: isAnimated)
        }
        
    }
}

#Preview {
    AnimationBootcamp()
}
