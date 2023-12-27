//
//  SliderBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating")
            Text(String(format: "%.2f", sliderValue))
                .foregroundColor(color)
            
           // Slider(value: $sliderValue)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"), label:{
                    Text("title")
                } )
        }
    }
}

#Preview {
    SliderBootcamp()
}
