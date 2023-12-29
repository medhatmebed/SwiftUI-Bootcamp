//
//  AppStorageBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button {
                let name = "Medhat_AppStorage"
                currentUserName = name
             //   UserDefaults.standard.set(name, forKey: "name")
            } label: {
                Text("SAVE")
            }

        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
