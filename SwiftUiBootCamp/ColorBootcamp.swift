//
//  ColorBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 08/09/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {

                // Built-in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .frame(width: 300, height: 100)

                // Color Literal
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        Color(
                            #colorLiteral(
                                red: 0.2,
                                green: 0.7,
                                blue: 0.9,
                                alpha: 1
                            )
                        )
                    )
                    .frame(width: 300, height: 100)

                // Ui  Color
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(uiColor: .red))
                    .frame(width: 300, height: 100)
                    .shadow(
                        color: Color("CustomColor").opacity(0.3),
                        radius: 1,
                        x: -4,
                        y: -5
                    )

                // Asset Color
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("CustomColor"))
                    .frame(width: 300, height: 100)
                    .shadow(radius: 10)
            }.navigationTitle("Colors Bootcamp").font(.title).fontWeight(
                .semibold
            ).foregroundColor(.gray).kerning(1)
        }
    }
}

#Preview {
    ColorBootcamp()
}
