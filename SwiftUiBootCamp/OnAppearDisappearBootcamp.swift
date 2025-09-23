//
//  OnAppearDisappearBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 23/09/25.
//

import SwiftUI

struct OnAppearDisappearBootcamp: View {

    @State var myText: String = "This is Title"
    @State var count: Int = 0

    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)

                //MARK: List of Rectangle
                LazyVStack {
                    ForEach(0..<50, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 150)
                            .padding(.horizontal, 10)
                            .onAppear {
                                count += 1
                            }
                    }
                }

            }
            .onAppear(perform: {

                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new Text"
                }
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearDisappearBootcamp()
}
