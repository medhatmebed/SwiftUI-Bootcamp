//
//  EscapingClosuresBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/28/23.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    @Published var text = "Hello"
    
    func getData() {
//        downloadData4 { [weak self] downloadResult in
//            self?.text = downloadResult.data
//        }
        downloadData5 { [weak self] downloadResult in
            self?.text = downloadResult.data
        }
    }
    func downloadData() -> String {
        return "New Data!"
    }
    func downloadData2(completionHandler: (String) -> ()) {
        completionHandler("New Data2!!")
    }
    func downloadData3(completionHandler: @escaping(String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completionHandler("New Data3!!")
        }
    }
    func downloadData4(completionHandler: @escaping(downloadResult) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = downloadResult(data: "New Data 4")
            completionHandler(result)
        }
    }
    func downloadData5(completionHandler: @escaping DownloadCompletion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = downloadResult(data: "New Data 5")
            completionHandler(result)
        }
    }

}

typealias DownloadCompletion = (downloadResult) -> ()

struct downloadResult {
    let data: String
}

struct EscapingClosuresBootcamp: View {
    @StateObject var vm = EscapingViewModel()
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

#Preview {
    EscapingClosuresBootcamp()
}
