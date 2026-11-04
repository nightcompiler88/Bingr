//
//  Constants.swift
//  Bingr
//
//  Created by MrK on 03/11/2026.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadString = "Download"
    static let playString = "Play"
    static let trendingMoviesString = "Trending Movies"
    
    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadIconString = "arrow.down.to.line"
    
    static let testTitleURL = "https://www.themoviedb.org/t/p/w1280/pKHeSpUfl4ff9wYIr0OMyZWBiQn.jpg"
    static let tesTitleURL2 = "https://www.themoviedb.org/t/p/w1280/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg"
    static let tesTitleURL3 = "https://www.themoviedb.org/t/p/w1280/3x6c9ybt0762idyzIifUZeTD5MZ.jpg"
}

extension Text {
    func ghostButton() -> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 5)
            }
    }
}
