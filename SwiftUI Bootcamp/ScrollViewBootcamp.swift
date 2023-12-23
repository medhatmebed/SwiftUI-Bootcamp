//
//  ScrollViewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/24/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                ForEach(0..<20) { i in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { ii in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 100)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
