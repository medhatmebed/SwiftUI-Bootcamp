//
//  AlertsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/26/23.
//

import SwiftUI

struct AlertsBootcamp: View {
    @State var showAlert = false
    @State var backGroundColor = Color(.white)
    var body: some View {
        ZStack {
            backGroundColor.ignoresSafeArea()
            Button("Click Here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("TEXT"),
            message: Text("message"),
            primaryButton: .destructive(Text("destruct"), action: {
                backGroundColor = .red
            }),
            secondaryButton: .cancel())
    }
}

#Preview {
    AlertsBootcamp()
}
