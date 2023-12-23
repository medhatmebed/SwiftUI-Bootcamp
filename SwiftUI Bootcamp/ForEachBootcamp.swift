//
//  ForEachBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data = ["Medhat", "Meebed", "Programmer"]
    var body: some View {
        ForEach(data.indices, id: \.self) { index in
            Text("Hello, \(data[index])!")
        }
        ForEach(0..<10) { _ in
            Circle()
                .frame(width: 50)
        }
    }
}

#Preview {
    ForEachBootcamp()
}
