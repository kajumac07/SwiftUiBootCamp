//
//  GridBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 12/09/25.
//

import SwiftUI

struct GridBootcamp: View {

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]

    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 10,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section {
                    ForEach(0..<40) { index in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Header")
                        .foregroundStyle(.white )
                        .font(.title)
                        .frame(maxWidth:.infinity, alignment: .leading)
                        .background(.blue)
                }
                
                Section {
                    ForEach(0..<40) { index in
                        Rectangle()
                            .fill(.pink)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Header 2")
                        .foregroundStyle(.white )
                        .font(.title)
                        .frame(maxWidth:.infinity, alignment: .leading)
                        .background(.blue)
                }

            })
        }
    }
}

#Preview {
    GridBootcamp()
}
