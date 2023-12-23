//
//  SpacerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.yellow)
                Image(systemName: "gear")
            }
            .font(.system(size: 50))
        .background(Color.pink)
            
            Spacer()
                .frame(width: 10)
                .background(Color.yellow)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
