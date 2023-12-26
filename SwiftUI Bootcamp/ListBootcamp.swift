//
//  ListBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/26/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits = ["apple", "orange", "banana", "peach"]
    @State var vegetable = ["tomato", "potato", "carrot"]
    var body: some View {
        NavigationStack {
            List {
                Section(header:
                            Text("Fruits")
                    .foregroundColor(.red)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                }
                Section("Vegetables") {
                    ForEach(vegetable, id: \.self) { vegi in
                        Text(vegi)
                    }
                }
            }
            .navigationTitle("grocery list")
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(fromOffsets: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

#Preview {
    ListBootcamp()
}
