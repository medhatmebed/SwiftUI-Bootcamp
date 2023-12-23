//
//  GridBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/24/23.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                        
                    }
                }
                Section(header:
                            Text("Section 2")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                        
                    }
                }
            })
        }
    }
}

#Preview {
    GridBootcamp()
}
