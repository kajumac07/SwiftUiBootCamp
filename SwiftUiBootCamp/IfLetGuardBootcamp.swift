//
//  IfLetGuardBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 23/09/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {

    @State var currentUserID: String? = nil
    @State var displayText: String? = nil  //An Optional String
    @State var isLoading: Bool = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Here we are practicing Safe Coding...")

                if let newText = displayText {
                    Text(newText)  //only runs if displayText is not nil
                        .font(.title)
                }

                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .navigationTitle("Safe Coding ")
            .onAppear {
                loadData2()
            }
        }
    }

    //MARK: load data function
    func loadData() {
        if let userId = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                displayText = "This is the loaded data! User id is \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error! user id not found"
        }
    }
    
    //MARK: Using guard method
    
    func loadData2(){
        guard let userId = currentUserID else {
            displayText = "Error ! user id not found"
            return // return means get out of this function if user id is nil
        }
        // if user id is not nil then we execute our data  here
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            displayText = "This is the loaded data! User id is \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
