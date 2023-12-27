//
//  TabViewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView {
            
            ZStack {
                Color.red.ignoresSafeArea()
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("browse")
                }
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
            
        }
    }
}

#Preview {
    TabViewBootcamp()
}
