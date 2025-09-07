//
//  TextViewB.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 07/09/25.
//

import SwiftUI

struct TextViewB: View {
    var body: some View {
        Text("Hey, This is Text All Property, I really Enjoying this course and i learn alot.".uppercased())
            .font(.title)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough()
//            .font(.system(size: 20,weight: .semibold, design: .rounded))
//            .baselineOffset(10)
            .lineLimit(nil)
            .kerning(3)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 300, height: 300, alignment: .center)
            .minimumScaleFactor(10)
    }
}

#Preview {
    TextViewB()
}
