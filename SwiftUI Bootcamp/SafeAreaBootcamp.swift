//
//  SafeAreaBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/24/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title Goes Here!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { i in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
                
            }
            .background(Color.blue)
            
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
        
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
