//
//  WorldTravelerApp.swift
//  WorldTraveler
//
//  Created by hks on 18.09.2020.
//

import SwiftUI

@main
struct WorldTravelerApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView().tabItem { HStack
                {
                    Image(systemName: "termomether")
                    Text("TAB_CONVERSION")
                }
                }
                MapView().tabItem { HStack
                {
                    Image(systemName: "map")
                    Text("TAB_MAP")
                }
                }
            }.accentColor(.purple)
        }
    }
}
