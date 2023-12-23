//
//  ColorsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
             //   Color.secondary
              Color("ThemeColor")
             
               
            )
            .frame(width: 300, height: 300)
            .shadow(radius: 10)
    }
}

#Preview {
    ColorsBootcamp()
}
