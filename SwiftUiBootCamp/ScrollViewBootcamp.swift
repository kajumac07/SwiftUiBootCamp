//
//  ScrollViewBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 12/09/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        //        ScrollView(.vertical, showsIndicators: true, content: {
        //            VStack {
        //                ForEach(0..<100) { index in
        //                    Text("Item \(index)")
        //                        .font(.title)
        //                        .frame(maxWidth: .infinity)
        //                        .padding()
        //                        .background(Color.blue.opacity(0.2))
        //                        .cornerRadius(10)
        //                        .padding(.horizontal)
        //                }
        //            }
        //        })

        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(0..<20, id: \.self) { rowIndex in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 16) {
                            ForEach(0..<10, id: \.self) { colIndex in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.red)
                                    .frame(width: 200, height: 200)
                                    .overlay(
                                        Text("R\(rowIndex) C\(colIndex)")
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
