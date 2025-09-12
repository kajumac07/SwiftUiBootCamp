//
//  ForEachBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 12/09/25.
//

import SwiftUI


struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hello Everyone"]
    let myString : String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices, id: \.self) { index in
                Text("Item \(index): \(data[index])")
            }
        }
    }
}


#Preview {
    ForEachBootcamp()
}
