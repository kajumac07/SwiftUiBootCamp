//
//  BindingBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 15/09/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    
    @State var backgroundColor: Color = .gray
    @State var btnName: String = "Button"
    
    var body: some View {
        ZStack {
            backgroundColor.opacity(0.3).ignoresSafeArea()
            
            ExtractedView(backgroundColor: $backgroundColor, btnName: $btnName)
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ExtractedView: View {
    @Binding var backgroundColor: Color
    @Binding var btnName: String
    var body: some View {
        Button(action: {
            self.backgroundColor = .green
            self.btnName = "Button Changed"
        }, label: {
            Text(btnName)
                .font(.title)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal,20)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
}
