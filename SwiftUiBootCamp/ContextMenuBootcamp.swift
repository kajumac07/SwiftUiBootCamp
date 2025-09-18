//
//  ContextMenuBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 18/09/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    
    @State var backgroundColor: Color = .red
    
    var body: some View {

        VStack(alignment: .leading, spacing: 20.0) {
            RoundedRectangle(cornerRadius: 20)
                .fill(backgroundColor)
                .frame(width: 250, height: 200)
                .contextMenu {
                    Button("Red") { backgroundColor = .red }
                    Button("Green") { backgroundColor = .green }
                    Button("Orange") { backgroundColor = .orange }
                }

        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
