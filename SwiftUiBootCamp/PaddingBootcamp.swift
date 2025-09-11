//
//  PaddingBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 11/09/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
                  .ignoresSafeArea()
            VStack (alignment: .leading){
                Text("Hii Kalua")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(.bottom,20)
                
                Text("This is description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                    .foregroundStyle(.white)
            }
            .padding()
            .background(.red)
            .cornerRadius(12)
            .padding(.horizontal,18)
        }
    }
}

#Preview {
    PaddingBootcamp()
}
