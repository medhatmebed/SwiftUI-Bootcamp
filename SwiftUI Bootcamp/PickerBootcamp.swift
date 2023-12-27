//
//  PickerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection = "1"
    
    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            Picker(selection: $selection, label: Text("Picker")) {
                ForEach(18..<100) { number in
                    Text("\(number)")
                        .font(.headline)
                        .foregroundColor(.red)
                        .tag("\(number)")
                    
                }
            }
           // .pickerStyle(WheelPickerStyle())
            .pickerStyle(DefaultPickerStyle())
            
            
        }
    }
}

#Preview {
    PickerBootcamp()
}
