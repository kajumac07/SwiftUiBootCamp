//
//  SheetsBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 17/09/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack {
            Color(.green).opacity(0.3).ignoresSafeArea()
            
            Button(action: {
                //do something
                showSheet.toggle()
            }, label: {
                Text("Show Sheet")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal,15)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
        
        .fullScreenCover(isPresented: $showSheet, content: {
            //Do not add conditional logic here
            SheetViewScreen()
        })
        
//        .sheet(isPresented: $showSheet, content: {
//            SheetViewScreen()
//        })
    }
}


struct SheetViewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(.red).opacity(0.3).ignoresSafeArea()
            
            Button(action: {
                //do something
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.purple )
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}
  
#Preview {
    SheetsBootcamp()
//    SheetViewScreen()
}
