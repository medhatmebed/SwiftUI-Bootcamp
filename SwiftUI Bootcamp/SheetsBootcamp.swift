//
//  SheetsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/26/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
            }
//            .sheet(isPresented: $showSheet) {
//                VStack{
//                    Text("Hello, I'm a modal!")
//                    Button("Dismiss") {
//                        showSheet.toggle()
//                    }
//                }
                .presentationDetents([.medium])
//                 .frame(maxWidth: .infinity, maxHeight: .infinity)
//                 .background(.yellow)
        
            .sheet(isPresented: $showSheet) {
             //   SecondScreen(showSheet: $showSheet)
                SecondScreen()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }

        }
        
    }
}

struct SecondScreen: View {
    
  //  @Binding var showSheet : Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
              //  showSheet.toggle()
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    SheetsBootcamp()
}
