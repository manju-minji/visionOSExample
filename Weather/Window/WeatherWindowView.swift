//
//  WeatherWindowView.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI

struct WeatherWindowView: View {
    @State private var selectedWeather = 0
    
    var body: some View {
        VStack {
            if selectedWeather == 0 {
                RainWindowView()
            } else {
                SnowWindowView()
            }
            
            Picker("Choose weather", selection: $selectedWeather) {
                Text("Rain").tag(0)
                Text("Snow").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(width: 200)
        }
        .padding(30)
    }
}

#Preview {
    WeatherWindowView()
}
