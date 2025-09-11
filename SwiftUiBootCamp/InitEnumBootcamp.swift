//
//  InitEnumBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 11/09/25.
//

import SwiftUI

struct InitEnumBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    
    init(count: Int, fruit:Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
         
        
    }
    
    
    enum Fruit{
        case apple
        case orange
    }
    
    
    var body: some View {
        VStack{
            
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    HStack{
        InitEnumBootcamp(count: 10, fruit: .orange)
        InitEnumBootcamp(count: 20, fruit: .apple)
    }
}
