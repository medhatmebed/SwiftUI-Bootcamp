//
//  ButtonsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/24/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title = "this is my title"
    
    var body: some View {
//        Text("This text is in Avenir Next font.")
//                    .font(.custom("Avenir Next", size: 24))
        Text(title)
        
        Button("press me!") {
            self.title = "button #1 was pressed"
        }
      
        Button {
            self.title = "button #2 was pressed"
        } label: {
            Text("Button #2")
                .font(.custom("Avenir Next", size: 24))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(
                    Color.red
                        .cornerRadius(10)
                        .shadow(radius: 10)
                )
        }
        
        Button {
            title = "button #3 was pressed"
        } label: {
            Text("button 3")
                .font(.caption)
                .bold()
                .foregroundColor(.red)
                .padding()
                .padding(.horizontal, 20)
                .background(
                    Capsule()
                        .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                )
        }

        

    }
}

#Preview {
    ButtonsBootcamp()
}
