//
//  ListSwipeACtionsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct ListSwipeACtionsBootcamp: View {
    @State var fruits = ["apple", "orange", "banana", "peach"]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button {
                            
                        } label: {
                            Text("Archive")
                        }
                        .tint(.blue)
                        Button {
                            
                        } label: {
                            Text("Save")
                        }
                        .tint(.green)
                        Button {
                            
                        } label: {
                            Text("Junk")
                        }
                        .tint(.red)

                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            
                        } label: {
                            Text("Share")
                        }
                        .tint(.yellow)
                    }
            }
            Text("Medhat")
                .badge("new items")
        }
    }
}

#Preview {
    ListSwipeACtionsBootcamp()
}
