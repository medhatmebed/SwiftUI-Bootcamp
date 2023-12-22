//
//  TextBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/22/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("hello, world!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
            //.bold()
            //.underline()
//            .underline(true, color: .red)
           // .strikethrough(true, color: .red)
           // .font(.system(size: 32, weight: .heavy, design: .rounded))
            //.baselineOffset(10.0)
            //.kerning(2.0)
            //.multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, alignment: .trailing)
            .minimumScaleFactor(10.0)
    }
}

#Preview {
    TextBootcamp()
}
