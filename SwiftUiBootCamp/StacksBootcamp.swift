//
//  StacksBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 09/09/25.
//

import SwiftUI

struct StacksBootcamp: View {
    //Vstacks -> Vertical
    //Hstacks -> Horizontal
    //Zstacks -> zIndex(back to front)
    var body: some View {
//        VStack (alignment:.leading, spacing: 0, content :{
//            CustomRectangle(width: 300, height: 300, color: .red)
//            CustomRectangle(width: 250, height: 250, color: .green)
//            CustomRectangle(width: 200, height: 200, color: .teal)
//            CustomRectangle(width: 150, height: 150, color: .yellow)
//            CustomRectangle(width: 100, height: 100, color: .pink)
//        })
//
//        HStack {
//            CustomRectangle(width: 100, height: 100, color: .red)
//            CustomRectangle(width: 100, height: 100, color: .green)
//            CustomRectangle(width: 100, height: 100, color: .teal)
//            CustomRectangle(width: 100, height: 100, color: .yellow)
//        }
        
//        ZStack {
//            CustomRectangle(width: 150, height: 150, color: .red)
//            CustomRectangle(width: 140, height: 140, color: .green)
//            CustomRectangle(width: 130, height: 130, color: .teal)
//            CustomRectangle(width: 100, height: 100, color: .yellow)
//        }
        
        
//        ZStack (alignment: .top) {
//            CustomRectangle(width: .infinity, height: .infinity, color: .blue)
//            
//            
//            VStack (alignment: .leading) {
//                CustomRectangle(width: 150, height: 150, color: .red)
//                CustomRectangle(width: 100, height: 100, color: .green)
//                
//                HStack{
//                    CustomRectangle(width: 150, height: 150, color: .pink)
//                    CustomRectangle(width: 150, height: 150, color: .yellow)
//                }
//                
//            }
//        }
        
        
        VStack (spacing:50) {
            
            ZStack{
                Circle()
                    .frame(width: 100,height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            
            Text("2")
                .font(.title)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .background(
                    Circle().frame(width: 100,height: 100)
                )
            
        }
     
        
        
    }
}

#Preview {
    StacksBootcamp()
}
 

struct CustomRectangle: View {
    let width: CGFloat;
    let height: CGFloat;
    let color: Color;
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: width, height: height, alignment: .center)
    }
}
