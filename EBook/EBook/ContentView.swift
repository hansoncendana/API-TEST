//
//  ContentView.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//

import AVKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            UpdateView()
                .tabItem {
                    Label("New Release", systemImage: "gamecontroller.fill")
                }
            PVView()
                .tabItem {
                    Label("PV", systemImage: "tray.fill")
                }
            YoutubeView()
                .tabItem {
                    Label("Guides",
                          systemImage: "play.rectangle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
