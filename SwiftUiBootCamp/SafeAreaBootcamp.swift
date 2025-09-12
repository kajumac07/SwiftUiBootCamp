//
//  SafeAreaBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 12/09/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        //        ZStack{
        //            //background
        //            Color(.red).ignoresSafeArea()
        //
        //            //foreground
        //            VStack {
        //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //                   Spacer()
        //            }
        //            .frame(maxWidth:.infinity, maxHeight: .infinity)
        //            .background(.blue)
        //        }

        //        ScrollView {
        //            VStack{
        //                Text("Title Goes Here")
        //
        //                ForEach(0..<40) { index in
        //                    RoundedRectangle(cornerRadius: 20)
        //                        .fill(.white)
        //                        .frame(height:150)
        //                        .shadow(radius: 4)
        //                        .padding()
        //                }
        //
        //
        //            }
        //            .background(.red)
        //            .ignoresSafeArea(.all)
        //        }

        ZStack {
            Color.blue
                .ignoresSafeArea()  // full background

            ScrollView {
                VStack {
                    Text("Hello SwiftUI")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: .infinity, height: .infinity, alignment: .leading)

                    ForEach(0..<20) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .frame(height: 150)
                            .shadow(radius: 4)
                            .padding()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
