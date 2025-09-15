//
//  StateBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 12/09/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var colorTitle : String = "Light Green"
    
    var body: some View {
        
        ZStack{
            //background
            backgroundColor.opacity(0.4)
                .ignoresSafeArea()
            
            //content layer
            VStack (spacing:20 ) {
                Text(colorTitle)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                HStack (spacing:20){
                    
                    Button("Button 1"){
                        self.backgroundColor = Color.red
                        self.colorTitle = "Light Red"
                    }
                    
                    Button("Button 2"){
                        self.backgroundColor = Color.blue
                        self.colorTitle = "Light Blue"
                    }
                }
                    
            }
        }
    }
}

#Preview {
    StateBootcamp()
}
