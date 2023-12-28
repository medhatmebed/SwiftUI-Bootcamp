//
//  TabGestureBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/28/23.
//

import SwiftUI

struct TabGestureBootcamp: View {
    @State var isSelected = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 250)
                .foregroundColor(isSelected ? Color.red : Color.blue)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            Text("Tep Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .padding(/*@START_MENU_TOKEN@*/.all, 25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 1) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TabGestureBootcamp()
}
