//
//  ToolbarBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State var text = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    TextField("placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(width: 200, height: 200)
                    }
                    
                }
                
//                Text("Hey 😄")
//                    .foregroundColor(.white)
                    .navigationTitle("Toolbar")
                    .foregroundColor(.white)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Image(systemName: "heart.fill")
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "gear")
                        }
                    }
                    .toolbarBackground(.hidden, for: .navigationBar)
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
