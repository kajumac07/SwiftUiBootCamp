//
//  AnimationBootamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 16/09/25.
//

import SwiftUI

struct AnimationBootamp: View {

    @State var isAnimated: Bool = false
    let timing:Double = 10.0

    var body: some View {
        VStack {
            Spacer()
            Button("Button") {
//                withAnimation(
//                    Animation.spring.repeatCount(50, autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                }
                
                isAnimated.toggle()
            }
            Spacer()
//            RoundedRectangle(cornerRadius: isAnimated ? 100 : 10)
//                .fill(isAnimated ? .red : .green)
//                .frame(width: isAnimated ? 100 : 200, height: isAnimated ? 100 : 200)
//                .rotationEffect(Angle(degrees: isAnimated ? 200 : 0))
//                .offset(y: isAnimated ? 100 : 0)
            
            RoundedRectangle(cornerRadius:  20)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius:  20)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius:  20)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius:  20)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing), value: isAnimated)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootamp()
}
