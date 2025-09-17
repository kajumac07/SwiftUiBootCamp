//
//  PopOverBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 17/09/25.
//

import SwiftUI

struct PopOverBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack {
            Color(.red).opacity(0.3).ignoresSafeArea()

            VStack {
                //Button
                Button("Button") {
                    showView.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
        }
        //Method-1
        .sheet(
            isPresented: $showView,
            content: {
                NewSecondScreen()
            }
        )
    }
}

struct NewSecondScreen: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(.green).opacity(0.3).ignoresSafeArea()

            Button(
                action: {
                    //do something
                    dismiss()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.purple)
                        .font(.largeTitle)
                        .padding(20)
                }
            )
        }
    }
}

#Preview {
    PopOverBootcamp()
}
