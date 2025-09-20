//
//  StepperBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Abhi on 21/09/25.
//

import SwiftUI

struct StepperBootcamp: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                StepperCartExample()
                StepperFitnessExample()
                StepperVolumeExample()
            }
            .padding()
        }
    }
}

#Preview {
    StepperBootcamp()
}

// MARK: - 1. Shopping Cart Example
struct StepperCartExample: View {
    @State private var quantity: Int = 1
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🛒 Add to Cart")
                .font(.title2)
                .fontWeight(.bold)
            
            Stepper("Quantity: \(quantity)", value: $quantity, in: 1...10)
                .padding()
            
            Text("Total: $\(quantity * 99)")
                .font(.headline)
                .foregroundColor(.green)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - 2. Fitness Goal Example
struct StepperFitnessExample: View {
    @State private var stepGoal: Int = 5000
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🏃 Daily Step Goal")
                .font(.title2)
                .fontWeight(.bold)
            
            Stepper("\(stepGoal) steps", value: $stepGoal, in: 1000...20000, step: 1000)
                .padding()
            
            Text("Your goal: \(stepGoal) steps per day")
                .font(.headline)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - 3. Volume Control Example
struct StepperVolumeExample: View {
    @State private var volume: Int = 5
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🎵 Volume Control")
                .font(.title2)
                .fontWeight(.bold)
            
            Stepper("Volume: \(volume)", value: $volume, in: 0...10)
                .padding()
            
            RoundedRectangle(cornerRadius: 10)
                .fill(volume > 5 ? .green : .red)
                .frame(width: 200, height: 20)
                .overlay(Text("\(volume)").foregroundColor(.white))
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
