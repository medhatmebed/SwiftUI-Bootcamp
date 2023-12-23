//
//  IconsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            .font(.title)
          //  .scaledToFit()
            .scaledToFill()
          //  .foregroundColor(.blue)
            .frame(width: 200, height: 150)
    }
}

#Preview {
    IconsBootcamp()
}
