//
//  NavigationViewBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 17/09/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink(
                    "Go to Second Screen",
                    destination: MySecondScreenNav()
                )
            }
            .navigationTitle("Journey Junction")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: MySecondScreenNav()) {
                        Image(systemName: "person.fill")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: Text("Settings Screen")) {
                        Image(systemName: "gear")
                    }
                }
            }

        }
    }
}

struct MySecondScreenNav: View {
    var body: some View {
        ZStack {
            Color(.red).opacity(0.3).ignoresSafeArea()
                .navigationTitle("Second Screen")

            NavigationLink(
                "Went to 3rd Screen",
                destination: Text("3rd Screen")
            )
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
