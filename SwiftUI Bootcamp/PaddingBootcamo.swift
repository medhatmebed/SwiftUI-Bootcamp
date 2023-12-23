//
//  PaddingBootcamo.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct PaddingBootcamo: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, Medhat")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("Now you know how to wirte with your ten fingers now we will move to your speed by traing your fingers to move fastwer on the keyboard")
                .padding()
                .padding(.vertical, 10)
                .background {
                    Color.white
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
                }
        }
    }
}

#Preview {
    PaddingBootcamo()
}
