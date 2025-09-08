//
//  ShapesBootCamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 08/09/25.
//  Here we learn Shapes and Circle

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
//        Circle()
//        Ellipse().frame(width: 100,height: 100, alignment: .center)
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.blue)
            //.foregroundStyle(.red)
            //.stroke()
            //.stroke(.red, lineWidth: 20)
//            .stroke(.red, style: StrokeStyle(
//                lineWidth: 20, lineCap: .butt,
//                dash: [3]
//            ))
            .trim(from: 0.5, to: 1.0)
//            .stroke(.red, lineWidth: 20)
            .frame(width: 300,height: 150, alignment: .center)
    }
}

#Preview {
    ShapesBootCamp()
}
