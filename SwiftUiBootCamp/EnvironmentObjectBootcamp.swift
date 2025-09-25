//
//  EnvironmentObjectBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 25/09/25.
//

import SwiftUI


//MARK: ViewModel
class EnvironmentObjectViewModel: ObservableObject {
    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iMac", "iPad", "Mac Air"])
    }

}


//MARK: Main Screen
struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel:EnvironmentObjectViewModel = EnvironmentObjectViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: EnvironmentObjectSecondScreen(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}


//MARK: Second Screen

struct EnvironmentObjectSecondScreen: View {
    let selectedItem: String
    var body: some View {
        NavigationLink(destination: FinalScreenEnvironmentObject()) {
            Text(selectedItem)
        }
    }
}


//MARK: Third Screen

struct FinalScreenEnvironmentObject : View {
    
    @EnvironmentObject var viewModel: EnvironmentObjectViewModel
    
    var body: some View {
        ForEach(viewModel.dataArray, id: \.self) { Item in
            Text(Item)
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
