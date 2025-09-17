//
//  ListBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 17/09/25.
//

import SwiftUI


struct ListBootcamp: View {

    @State private var fruits: [String] = [
        "Apples", "Oranges", "Guava", "Peach", "Banana",
    ]

    var body: some View {
        NavigationStack {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: deleteItemFromList)
                    .onMove(perform: moveItemInList)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }

    func deleteItemFromList(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }

    func moveItemInList(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}





#Preview {
    ListBootcamp()
}
