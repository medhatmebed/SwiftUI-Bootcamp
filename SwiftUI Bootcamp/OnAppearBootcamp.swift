//
//  OnAppearBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/28/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText = "start text"
    @State var count = 0
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "this is my new text"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text..."
            })
            .navigationTitle("On Appear Bootcamp \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
