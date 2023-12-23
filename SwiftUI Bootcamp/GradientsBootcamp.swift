//
//  GradientsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
              //  LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
               // RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .top, startRadius: 10.0, endRadius: 300.0)
            //    AngularGradient(colors: <#T##[Color]#>, center: <#T##UnitPoint#>, angle: <#T##Angle#>)
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
