//
//  TabViewBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 20/09/25.
//

import SwiftUI

struct TabViewBootcamp: View {

    @State var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {

            Tab("Home", systemImage: "house.fill", value: 0) {
                HomeView()
            }

            Tab("Products", systemImage: "cart.fill", value: 1) {
                Text("Product view")
            }

            Tab("Categories", systemImage: "square.grid.2x2.fill", value: 2) {
                Text("category view")
            }

            //            HomeView()
            //                .tabItem {
            //                    Image(systemName: "house.fill")
            //                    Text("Home")
            //                }
            //                .tag(0)
            //            Text("Globe")
            //                .tabItem {
            //                    Image(systemName: "globe")
            //                    Text("Browse")
            //                }
            //                .tag(1)
            //
            //            Text("Profile")
            //                .tabItem {
            //                    Image(systemName: "person.fill")
            //                    Text("Profile")
            //                }
            //                .tag(2)
        }
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    var body: some View {
        ScrollView {  // Makes the whole content scrollable
            VStack(alignment: .leading, spacing: 20) {

                // MARK: - Heading
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                Text("Discover our latest products")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                // MARK: - Horizontal Scrollable Cards
                Text("Popular Items")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(0..<5) { item in
                            CardView(
                                title: "Item \(item+1)",
                                description: "This is item description",
                                color: Color.blue.opacity(0.7)
                            )
                        }
                    }
                    .padding(.horizontal)
                }

                // MARK: - Vertical List
                Text("Recommended for You")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)

                VStack(spacing: 15) {
                    ForEach(0..<10) { item in
                        CardView(
                            title: "Recommendation \(item+1)",
                            description: "Description goes here",
                            color: Color.green.opacity(0.7)
                        )
                    }
                }
                .padding(.horizontal)

            }
            .padding(.vertical)
        }
    }
}

// MARK: - Reusable CardView
struct CardView: View {
    var title: String
    var description: String
    var color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Rectangle()
                .fill(color)
                .frame(height: 150)
                .cornerRadius(15)

            Text(title)
                .font(.headline)

            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
