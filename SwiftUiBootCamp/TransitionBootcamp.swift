//
//  TransitionBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 16/09/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Toggle Sheet") {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.5)) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue.opacity(0.3))
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}




#Preview {
    TransitionBootcamp()
}
