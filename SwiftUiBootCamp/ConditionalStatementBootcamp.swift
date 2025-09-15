//
//  ConditionalStatementBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 15/09/25.
//

import SwiftUI

struct ConditionalStatementBootcamp: View {

    @State var showCircle: Bool = false
    @State var showRect: Bool = false
    @State var isLoading: Bool = false

    var body: some View {

        Button("Show Circle : \(showCircle.description)") {
            showCircle.toggle()
        }

        Button("Show Rectangle : \(showRect.description)") {
            showRect.toggle()
        }
        
        Button("Show Loading : \(isLoading.description)") {
            isLoading.toggle()
        }
        
        if isLoading {
            ProgressView()
        }

        if showCircle {
            Circle().frame(width: 100, height: 100)
        }

        if showRect {
            Rectangle().frame(width: 100, height: 100)
        }

        if showCircle && showRect {
            RoundedRectangle(cornerRadius: 20).frame(width: 250, height: 100)
        }
    }
}

#Preview {
    ConditionalStatementBootcamp()
}
