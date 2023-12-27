//
//  ActionsSheet.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/26/23.
//

import SwiftUI

struct ActionsSheet: View {
    @State var showActionSheet = false
    @State var actionSheetOptions : ActionSheetOptions = .isOtherPost
    enum ActionSheetOptions {
        case isOtherPost
        case isMyPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOptions = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
                
                    
            }
            .padding()
            Rectangle()
                .aspectRatio(contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: gedActionSheet)
    }
    
    func gedActionSheet() -> ActionSheet {
        
//        let button1: ActionSheet.Button = .default(Text("btn 1"))
//        let button2: ActionSheet.Button = .destructive(Text("destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(title: Text("This is the title"), message: Text("this is the message"), buttons: [button1, button2, button3])
        
        let shareButton: ActionSheet.Button = .default(Text("sahre")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("actionSheet title")
        
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(title: title, buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(title: title, buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
    }
    
}

#Preview {
    ActionsSheet()
}
