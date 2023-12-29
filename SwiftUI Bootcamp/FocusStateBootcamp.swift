//
//  FocusStateBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/29/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
  //  @FocusState private var usernameInFocus: Bool
    @State private var username = ""
//    @FocusState private var passwordInFocus: Bool
    @State private var password = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
               // .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
               // .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign Up 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
        }
        .padding(40)
    }
}

#Preview {
    FocusStateBootcamp()
}
