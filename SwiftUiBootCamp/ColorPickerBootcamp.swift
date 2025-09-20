//
//  ColorPickerBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 20/09/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {

    @State var backgroundColor: Color = .green

    var body: some View {
        ZStack{
            
            backgroundColor.ignoresSafeArea()
            
            VStack{
                ColorPicker(
                    "Select Color",
                    selection: $backgroundColor,
                    supportsOpacity: true
                )
            }.padding(30)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
