//
//  ViewModelBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/28/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray = [FruitModel]()
    @Published var isLoading = false
    
    init() {
        getFruits()
    }
    func getFruits() {
        let fruit1 = FruitModel(name: "orange", count: 1)
        let fruit2 = FruitModel(name: "banana", count: 72)
        let fruit3 = FruitModel(name: "watermelon", count: 43)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}

struct ViewModelBootcamp: View {
    //@StateObject -> USE THIS ON CREATING / INIT
    //@ObservedObject -> USE THIS FOR SUBVIEWS
    //   @State var fruitArray = [FruitModel]()
    //  @ObservedObject var fruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitViewMode: fruitViewModel), label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
    
    
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewMode: FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("Go Back")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
            VStack {
                ForEach(fruitViewMode.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            
        }
    }
}

#Preview {
    ViewModelBootcamp()
    // RandomScreen()
}
