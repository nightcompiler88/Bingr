//
//  ContentView.swift
//  Bingr
//
//  Created by MrK on 03/11/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house"){
                Text("Home")
            }
            Tab("Upcoming", systemImage: "play.circle"){
                Text("Home")
            }
            Tab("Search", systemImage: "magnifyingglass"){
                Text("Home")
            }
            Tab("Download", systemImage: "arrow.down.to.line"){
                Text("Home")
            }
        }
    }
}

#Preview {
    ContentView()
}
