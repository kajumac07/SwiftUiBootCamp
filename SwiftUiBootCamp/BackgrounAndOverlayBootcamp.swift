//
//  BackgrounAndOverlayBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 09/09/25.
//

import SwiftUI

struct BackgrounAndOverlayBootcamp: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {

                //                Text("Namaste")
                //                    .background(
                //                        Circle()
                //                        .fill(.red)
                //                        .frame(
                //                        width: 100,
                //                        height: 100,)
                //                    )
                //
                //                    .background(
                //                        Circle()
                //                            .fill(.blue)
                //                            .frame(width: 120,height: 120)
                //                    )

                //                Circle()
                //                    .fill(.pink)
                //                    .frame(width: 100, height: 100,alignment: .center)
                //                    .overlay(
                //                        Text("1")
                //                            .font(.title)
                //                            .foregroundStyle(.white)
                //                            .fontWeight(.semibold)
                //                    )
                //
                //                    .background(Circle()
                //                        .fill(.red )
                //                        .frame(width: 120,height: 120)
                //                    )

                Image(systemName: "heart.fill")
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                    .background(
                        Circle()
                            .fill(.pink)
                            .frame(width: 100, height: 100)
                            .shadow(
                                color: Color(.gray),
                                radius: 3,
                                x: 0,
                                y: 10
                            )
                            .overlay(
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 35, height: 35)
                                    .overlay(
                                        Image(systemName: "person")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.white)
                                    ),
                                alignment: .bottomTrailing,
                            )
                    )

            }.navigationTitle("Background && Overlay")
        }
    }
}

#Preview {
    BackgrounAndOverlayBootcamp()
}
