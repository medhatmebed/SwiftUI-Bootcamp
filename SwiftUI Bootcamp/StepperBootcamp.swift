//
//  StepperBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue = 10
    @State var widthIncrement : CGFloat = 0
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 50)
            Stepper {
                Text("Stepper")
            } onIncrement: {
                incrementWidth(amount: 50)
            } onDecrement: {
                incrementWidth(amount: -50)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
