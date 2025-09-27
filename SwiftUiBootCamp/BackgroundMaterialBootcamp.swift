//
//  BackgroundMaterialBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 27/09/25.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 5)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial )
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .ignoresSafeArea()
        .background(
            Image("img")
        )
    }
}

//UltraThinMaterial
//ultraThickMaterial
//thinMaterial
//regularMaterial 

#Preview {
    BackgroundMaterialBootcamp()
}
