//
//  FramesBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 09/09/25.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        
        NavigationView{
            VStack (spacing:20) {
                Text("Hello")
                    .background(.red)
                    .frame(height: 100)
                    .background(.green)
                    .frame(width: 200)
                    .background(.yellow)
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    .frame(height: 400)
                    .background(.purple)
                    .frame(maxHeight: .infinity)
                    .background(.blue)
//                    .background(.gray)
//                    .frame(width: 300, height: 300)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .background(.red)
            }
            .navigationTitle("Frames Bootcamp")
        }
    }
}

#Preview {
    FramesBootcamp()
}
