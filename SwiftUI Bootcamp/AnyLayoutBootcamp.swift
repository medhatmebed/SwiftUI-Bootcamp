//
//  ANyLayoutBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    
    var body: some View {
        VStack {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = verticalSizeClass == .regular ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
