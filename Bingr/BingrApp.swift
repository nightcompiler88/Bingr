//
//  BingrApp.swift
//  Bingr
//
//  Created by MrK on 03/11/2026.
//

import SwiftUI
import SwiftData

@main
struct BingrApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Title.self)
    }
}
