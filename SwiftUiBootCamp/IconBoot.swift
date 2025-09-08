//
//  IconBoot.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 08/09/25.
//

import SwiftUI

struct IconBoot: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "person.crop.circle.fill.badge.plus")
                    //            .font(.largeTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .foregroundStyle(.red)
                    .frame(width: 300, height: 400)
            }
            .navigationTitle("System Icon").font(.caption)        }
    }
}

#Preview {
    IconBoot()
}
