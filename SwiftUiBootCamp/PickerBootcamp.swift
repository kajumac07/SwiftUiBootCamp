//
//  PickerBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 20/09/25.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection: String = "18"

    @State private var selectedCar: String = "Tesla"

    @State private var genre: String = "Rock"

    let cars = ["Tesla", "BMW", "Audi", "Mercedes", "Toyota"]

    let genres = ["Rock", "Pop", "Jazz", "Hip-Hop", "Classical"]

    var body: some View {
        VStack {
            Text("Selected Car: \(selectedCar)")
                .font(.headline)

            Picker("Select Car", selection: $selectedCar) {
                ForEach(cars, id: \.self) { car in
                    Text(car).tag(car)
                }
            }
            .pickerStyle(MenuPickerStyle())  // dropdown style
            .padding()

            //segmented style
            VStack {
                Text("Favorite Genre: \(genre)")
                    .font(.title2)

                Picker("Genre", selection: $genre) {
                    ForEach(genres, id: \.self) { g in
                        Text(g).tag(g)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())  // segmented control
                .padding()
            }

            HStack {
                Text("Your Age : ")
                Text(selection)
            }

            Picker(
                selection: $selection,
                content: {
                    ForEach(18..<100, id: \.self) { number in
                        Text("\(number)")
                            .tag("\(number)")
                    }
                },
                label: {
                    Text("")
                }
            ).pickerStyle(MenuPickerStyle())

            Picker("Select Your Age", selection: $selection) {
                ForEach(18..<100, id: \.self) { number in
                    Text("\(number)")
                        .tag("\(number)")
                }
            }

        }
    }
}

#Preview {
    PickerBootcamp()
}
