//
//  ResizableSheetBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView()
                .presentationDetents([.medium])
        })
    }
}

struct MyNextView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello, World")
        }
    }
    
    
}

#Preview {
    ResizableSheetBootcamp()
}
