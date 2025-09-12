//
//  ButtonBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 12/09/25.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    
    @State var title:String = "This is my Title"
    
    
    var body: some View {
        
        VStack (spacing: 30) {
            Text(title)
            
            Button("Click Here", action: {
                self.title = "Button tapped"
            }).accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 Pressed"
            }, label: {
                Text("Button 2")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                    
            })
        }
    }
}

#Preview {
    ButtonBootcamp()
}
