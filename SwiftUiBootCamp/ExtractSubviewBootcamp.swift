//
//  ExtractSubviewBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 15/09/25.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color(.green).opacity(0.6).ignoresSafeArea()
            contentItemsLayer
        }
    }
    
    var contentItemsLayer : some View {
        VStack {
            MyItem(title: "Apple", count: 5, color: .red)
            MyItem(title: "Orange", count: 15, color: .orange)
            MyItem(title: "Banana", count: 10, color: .red)
        }
    }
}

#Preview {
    ExtractSubviewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .font(.title)
        .fontWeight(.semibold)
        .padding()
        .foregroundStyle(.white)
        .frame(width: 200,height: 140)
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
