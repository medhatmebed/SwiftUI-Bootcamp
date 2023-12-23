//
//  ImagesBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/23/23.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("meebed")
            .resizable()
            .scaledToFit()
            //.clipped()
            .cornerRadius(10)
            .frame(width: 400, height: 300)
            .foregroundColor(.red)
          //  .clipShape(
            //    /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
                //   RoundedRectangle(cornerRadius: 24)
           // )
    }
}

#Preview {
    ImagesBootcamp()
}
