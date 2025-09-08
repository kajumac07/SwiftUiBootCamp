//
//  GradientBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 08/09/25.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .pink, .green]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                ),
                
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .pink, .green]),
//                    center: .center,
//                    startRadius: 10,
//                    endRadius: 20)
                
                AngularGradient(colors: [.red, .pink, .green],
                                center: .topLeading,
                                angle: .degrees(180))
            )
            .frame(width: 300, height: 300)
    }
}

#Preview {
    GradientBootcamp()
}
