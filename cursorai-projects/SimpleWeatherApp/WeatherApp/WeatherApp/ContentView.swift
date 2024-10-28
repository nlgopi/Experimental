//
//  ContentView.swift
//  WeatherApp
//
//  Created by Gopinath  Sundaram on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    let weatherData = WeatherService.getMockWeatherData()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Seattle Weather")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(weatherData) { day in
                            DayWeatherView(weather: day)
                        }
                    }
                    .padding()
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

