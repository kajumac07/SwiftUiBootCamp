//
//  SpacerBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 11/09/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            //heading section
            MenuHeading(
                menuTitle: "Trending Products",
                redirectTitle: "View All"
            )
            //card section
            HStack{
                CustomCard(color: .red)
                CustomCard(color: .green)
                CustomCard(color: .blue)
                
            }
            Spacer()
        }

    }
}

#Preview {
    SpacerBootcamp()
}

struct MenuHeading: View {
    var menuTitle: String
    var redirectTitle: String
    var body: some View {
        HStack {
            Text(menuTitle)
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.black)
            Spacer()
            Text(redirectTitle)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.red)
        }.padding()
    }
}

struct CustomCard: View {
    var color : Color
    var body: some View {
        Rectangle()
            .fill(color)
            .cornerRadius(20)
            .frame(width: 150,height: 150)
    }
}
