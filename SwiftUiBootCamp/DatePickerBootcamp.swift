//
//  DatePickerBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 20/09/25.
//

//import SwiftUI
//
//struct DatePickerBootcamp: View {
//    
//    @State var selectDate: Date = Date()
//    
//    var body: some View {
//        VStack{
//            DatePicker("Select a Date", selection: $selectDate)
//                .datePickerStyle(
//                    CompactDatePickerStyle()
////                    GraphicalDatePickerStyle()
////                    WheelDatePickerStyle()
//                )
//        }
//    }
//}

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State private var selectedDate: Date = Date()
    
    // Restrict DOB: Must be at least 18 years old
    let eighteenYearsAgo: Date = Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    let hundredYearsAgo: Date = Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                
                // MARK: - 1. Basic Date Picker (Compact)
                DatePicker("Compact Picker", selection: $selectedDate)
                    .datePickerStyle(.compact)
                    .padding()
                
                // MARK: - 2. Graphical Date Picker
                DatePicker("Graphical Picker", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .padding()
                
                // MARK: - 3. Wheel Date Picker (classic iOS style)
                DatePicker("Wheel Picker", selection: $selectedDate)
                    .datePickerStyle(.wheel)
                    .padding()
                
                // MARK: - 4. Time Picker only
                DatePicker("Select Time", selection: $selectedDate, displayedComponents: .hourAndMinute)
                    .padding()
                
                // MARK: - 5. Restrict Range (DOB Example: Age 18–100)
                VStack {
                    Text("Date of Birth (18+ only)")
                        .font(.headline)
                    
                    DatePicker(
                        "Select DOB",
                        selection: $selectedDate,
                        in: hundredYearsAgo...eighteenYearsAgo,
                        displayedComponents: .date
                    )
                    .datePickerStyle(.wheel)
                }
                .padding()
                
                // MARK: - 6. Display Selected Date in Different Formats
                VStack(alignment: .leading, spacing: 10) {
                    Text("Selected Date Formats:")
                        .font(.headline)
                    
                    Text("Date: \(selectedDate, style: .date)")
                    Text("Time: \(selectedDate, style: .time)")
                    Text("Relative: \(selectedDate, style: .relative)")
                    
                    Text("Custom: \(formattedDate(selectedDate))")
                        .foregroundColor(.blue)
                }
                .padding()
                
                Spacer()
            }
        }
    }
    
    // Custom Date Formatter
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long  // e.g. September 20, 2025
        formatter.timeStyle = .short // e.g. 3:45 PM
        return formatter.string(from: date)
    }
}



#Preview {
    DatePickerBootcamp()
}
