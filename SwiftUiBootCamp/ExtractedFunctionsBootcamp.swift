//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 15/09/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor: Color = .red
    
    var body: some View {
        ZStack {
            //background Color
            backgroundColor.opacity(0.3).ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    //content layer
    var contentLayer: some View {
        VStack{
            Text("Hello")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Button(action: {
                changeBackgroundColor()
            }, label: {
                Text("Button")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
    
    func changeBackgroundColor() {
        self.backgroundColor = .green
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
