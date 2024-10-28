//
//  DayWeatherView.swift
//  WeatherApp
//
//  Created by Gopinath  Sundaram on 9/21/24.
//

import SwiftUI

struct DayWeatherView: View {
    let weather: WeatherData
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.headline)
            Image(systemName: weatherIcon)
                .font(.system(size: 30))
            Text("\(weather.temperature)°F")
                .font(.title2)
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(10)
    }
    
    private var dayOfWeek: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        return formatter.string(from: weather.date)
    }
    
    private var weatherIcon: String {
        switch weather.condition {
        case .sunny: return "sun.max.fill"
        case .cloudy: return "cloud.fill"
        case .rainy: return "cloud.rain.fill"
        case .snowy: return "snow"
        }
    }
}

