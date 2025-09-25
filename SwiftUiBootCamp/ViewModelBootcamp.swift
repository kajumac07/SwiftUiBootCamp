//
//  ViewModelBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 25/09/25.
//

import SwiftUI

//MARK: Fruit Model
struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int

}

//MARK: Separate all logic

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false

    //MARK: init function calling getfruit
    init() {
        getFruit()
    }

    //MARK: getFruit Functions

    func getFruit() {
        let fruit1 = FruitModel(name: "Apple", count: 10)
        let fruit2 = FruitModel(name: "Orange", count: 20)
        let fruit3 = FruitModel(name: "Mango", count: 30)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }

    }

    //MARK: delete fruit
    func deletFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}


//MARK: Main Screen
struct ViewModelBootcamp: View {

    //@StateObject -> USE THIS ON CREATION/INIT
    //@ObservedObject -> USE THIS FOR SUBVIEW

    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                                .fontWeight(.semibold)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deletFruit)
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Fruit Lists")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        destination: SecondViewModelScreen(
                            fruitViewModel: fruitViewModel
                        )
                    ) {
                        Image(systemName: "person.fill")
                    }
                }
            }

        }
    }
}

//MARK: Second Screen
struct SecondViewModelScreen: View {

    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.red.opacity(0.1).ignoresSafeArea()

            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
