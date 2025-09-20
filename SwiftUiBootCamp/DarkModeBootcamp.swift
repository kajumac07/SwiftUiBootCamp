//
//  DarkModeBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 20/09/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This Text is Primary")
                        .foregroundStyle(.primary)
                    Text("This Text is secondary")
                        .foregroundStyle(.secondary)
                    Text("This color is black")
                        .foregroundStyle(.black)
                    Text("This color is white")
                        .foregroundStyle(.white)
                    
                    Text("This color is locally adptive")
                        .foregroundStyle(colorScheme == .light ? .blue : .green)
                    
                    Text("Thi color is globally adaptive")
                        .foregroundStyle(Color("adaptiveColor"))
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
