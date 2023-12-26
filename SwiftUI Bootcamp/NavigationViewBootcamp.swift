//
//  NavigationViewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/26/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!", destination: MyOtherScreen())
                
                Text("this is text1")
                Text("this is text2")
                Text("this is text3")
            }
            .navigationTitle("All Texts")
            .navigationBarTitleDisplayMode(.automatic)
         //   .navigationBarHidden(true)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: NavigationLink(destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                        .tint(.red)
                })
            )
           // .accentColor(.red)
        }
        
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            NavigationLink("Hello, world!", destination: MyThirdScreen())
                .navigationTitle("Second Screen")
                //.foregroundColor(.white)
                .accentColor(.orange)
            
            Button("Back Button") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding(.top, 50)
//            Button {
//
//            } label: {
//                Text("Go To Third Screen")
//            }

        }
    }
}

struct MyThirdScreen: View {
    var body: some View {
        ZStack {
          //  .navigationTitle("Third Screen")
            Color.purple
                .navigationTitle("Third Screen")
                
            Text("My Third Screen")
                .foregroundColor(.white)
                
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationViewBootcamp()
}
