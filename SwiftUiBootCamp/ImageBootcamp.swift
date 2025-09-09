//
//  ImageBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 09/09/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 300)
//                    .cornerRadius(30)
                    .clipShape(Circle())
            }.navigationTitle("Image Bootcamp")
                .font(.caption)
                .fontWeight(.light)
        }
    }
}

#Preview {
    ImageBootcamp()
}
