//
//  OverlaysBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct OverlaysBootcamp: View {
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(alignment: .topLeading) {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
            }
            .background(alignment: .bottomTrailing) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
            }
    }
}

#Preview {
    OverlaysBootcamp()
}
