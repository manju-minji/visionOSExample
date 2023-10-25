//
//  WeatherApp.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            //Ornaments
            TabView {
                WeatherWindowView()
                    .tabItem {
                        Label("Window", systemImage: "macwindow")
                    }
                
                WeatherVolumeView()
                    .tabItem {
                        Label("Volume", systemImage: "cube.transparent")
                    }
                
                SkySpaceView()
                    .tabItem {
                        Label("Space", systemImage: "globe")
                    }
            }
        }
        
        WindowGroup(id: "RainModel") {
            Rain()
        }
        .windowStyle(.volumetric)
        
        WindowGroup(id: "SnowModel") {
            Snow()
        }
        .windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
           SkyView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
