//
//  BackgroundMaterial.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct BackgroundMaterial: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background(.thinMaterial)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("meebed")
                .resizable()
                .scaledToFit()
        )
    }
}

#Preview {
    BackgroundMaterial()
}
