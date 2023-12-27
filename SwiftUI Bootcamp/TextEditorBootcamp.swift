//
//  TextEditorBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText = ""
    @State var savedText = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(maxHeight: 250)
                    
                    .colorMultiply(.gray.opacity(0.3))
                    .foregroundColor(.black)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                 Spacer()
            }
            .padding()
            .background(Color.white)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}


#Preview {
    TextEditorBootcamp()
}
