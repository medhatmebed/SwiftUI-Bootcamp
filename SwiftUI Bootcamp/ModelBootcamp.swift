//
//  ModelBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/28/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID().uuidString
    let displayName: String
    let userName: String
    let followersCount: Int
    let isVerified: Bool
}


struct ModelBootcamp: View {
    
    @State var users = [
        UserModel(displayName: "Medhat", userName: "medhat007", followersCount: 451, isVerified: true),  UserModel(displayName: "SubZero", userName: "SubZero", followersCount: 2301, isVerified: true),  UserModel(displayName: "Tailion", userName: "Tailion300", followersCount: 1001, isVerified: false),  UserModel(displayName: "Joel", userName: "Joel_II", followersCount: 4578, isVerified: true)
        
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                                .fontWeight(.semibold)
                            Text("@\(user.userName)")
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            
                            
                        }
                        Spacer()
                        Image(systemName: "checkmark.seal.fill")
                        VStack {
                            Text("\(user.followersCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ModelBootcamp()
}
