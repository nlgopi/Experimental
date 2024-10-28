//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Gopinath  Sundaram on 9/21/24.
//

import Foundation

struct WeatherData: Identifiable {
    let id = UUID()
    let date: Date
    let temperature: Int
    let condition: WeatherCondition
}

enum WeatherCondition: String {
    case sunny, cloudy, rainy, snowy
}

// Mock data
class WeatherService {
    static func getMockWeatherData() -> [WeatherData] {
        let calendar = Calendar.current
        let today = Date()
        
        return (0..<7).map { dayOffset in
            let date = calendar.date(byAdding: .day, value: dayOffset, to: today)!
            let temperature = Int.random(in: 40...75)
            let condition = [WeatherCondition.sunny, .cloudy, .rainy, .snowy].randomElement()!
            return WeatherData(date: date, temperature: temperature, condition: condition)
        }
    }
}

