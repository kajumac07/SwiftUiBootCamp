//
//  SliderBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Abhi on 21/09/25.
//

import SwiftUI

struct SliderBootcamp: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                SliderMusicVolumeExample()
                SliderTemperatureExample()
                SliderBrightnessExample()
                SliderFitnessProgressExample()
            }
            .padding()
        }
    }
}

#Preview {
    SliderBootcamp()
}

// MARK: - 1. Music Volume Example
struct SliderMusicVolumeExample: View {
    @State private var volume: Double = 0.5
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🎵 Music Volume")
                .font(.title2)
                .fontWeight(.bold)
            
            Slider(value: $volume, in: 0...1)
            
            Text("Volume: \(Int(volume * 100))%")
                .font(.headline)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - 2. Temperature Control Example
struct SliderTemperatureExample: View {
    @State private var temperature: Double = 22
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🌡 Temperature Control")
                .font(.title2)
                .fontWeight(.bold)
            
            Slider(value: $temperature, in: 16...30, step: 0.5)
            
            Text("Temperature: \(temperature, specifier: "%.1f")°C")
                .font(.headline)
                .foregroundColor(.red)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - 3. Brightness Control Example
struct SliderBrightnessExample: View {
    @State private var brightness: Double = 0.8
    
    var body: some View {
        VStack(spacing: 15) {
            Text("💡 Screen Brightness")
                .font(.title2)
                .fontWeight(.bold)
            
            Slider(value: $brightness, in: 0...1)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow.opacity(brightness))
                .frame(height: 40)
                .overlay(Text("Brightness: \(Int(brightness * 100))%")
                            .foregroundColor(.black))
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - 4. Fitness Progress Example
struct SliderFitnessProgressExample: View {
    @State private var progress: Double = 0.3
    
    var body: some View {
        VStack(spacing: 15) {
            Text("🏃 Fitness Progress")
                .font(.title2)
                .fontWeight(.bold)
            
            Slider(value: $progress, in: 0...1)
            
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                .frame(height: 10)
            
            Text("Progress: \(Int(progress * 100))%")
                .font(.headline)
                .foregroundColor(.green)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
