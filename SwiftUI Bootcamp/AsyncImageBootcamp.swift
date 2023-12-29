//
//  AsyncImageBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
            case .failure:
                Image(systemName: "questionmark")
            @unknown default:
                Image(systemName: "questionmark")
            }
        }
//        AsyncImage(url: url) { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .cornerRadius(10)
//        } placeholder: {
//            ProgressView()
//        }

    }
}

#Preview {
    AsyncImageBootcamp()
}
