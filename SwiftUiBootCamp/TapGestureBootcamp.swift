//
//  TapGestureBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 23/09/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 40){
            RoundedRectangle(cornerRadius: 20)
                .frame(height:200)
                .foregroundStyle( isSelected ? .green : .red)
                .padding()
            
            Button {
                // do something
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(isSelected ? .red : .green)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }.padding(.horizontal)

            //MARK: Custom Button
            
            Text("Tap gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(isSelected ? .red : .green)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
