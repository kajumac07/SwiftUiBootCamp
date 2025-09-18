//
//  AlertBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 18/09/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State private var showAlert: Bool = false
    @State private var isLoggedOut: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Logout") {
                showAlert = true
            }
            
            if isLoggedOut {
                Text("User logged out!")
                    .foregroundColor(.red)
                    .font(.headline)
            }
        }
//        .alert("Are you sure you want to logout?", isPresented: $showAlert) {
//            
//            Button("No", role: .cancel) {
//                print("Cancelled")
//            }
//            Button("Yes", role: .destructive) {
//                print("Logged out")
//                isLoggedOut = true
//            }
//        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Logout"),
                message: Text("Are you sure you want to logout? 👀"),
                primaryButton: .destructive(Text("Yes"), action: {
                    print("User logged out")
                }),
                secondaryButton: .cancel(Text("No"))
            )
        }

    }
}


#Preview {
    AlertBootcamp()
}
