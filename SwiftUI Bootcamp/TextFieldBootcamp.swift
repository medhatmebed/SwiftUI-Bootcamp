//
//  TextFieldBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText = ""
    @State var dataArray = [String]()
    var body: some View {
        NavigationStack {
            VStack {
                TextField("type something here!", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()

            }
            .padding()
            .navigationTitle("TextField Bootcamp!!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
