//
//  ButtonStylesBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 27/09/25.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button("Button Title") {
                //do something
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)
            
            Button("Button Title") {
                //do something
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle )
            
            Button("Button Title") {
                //do something
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                //do something
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
    }
}

#Preview {
    ButtonStylesBootcamp()
}
