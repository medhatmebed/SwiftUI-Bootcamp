//
//  TransitionBottcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/25/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var isAnimating = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Press Me!") {
                    isAnimating.toggle()
                }
                Spacer()
            }
            if isAnimating {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut(duration: 3.0), value: isAnimating)
                   // .transition(.slide.animation(.easeInOut(duration: 2.0)))
                    
                    //.transition(.slide).animation(.easeInOut, value: isAnimating)
                  //  .animation(.easeInOut)
                    //
                    //.transition(AnyTransition.slide)
            }
     
            
//            RoundedRectangle(cornerRadius: 30)
//                .frame(height: UIScreen.main.bounds.height * 0.5)
//                .opacity(isAnimating ? 1.0 : 0.0)
//                .animation(.easeInOut, value: isAnimating)
//            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
