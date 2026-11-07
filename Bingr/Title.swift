//
//  Title.swift
//  Bingr
//
//  Created by MrK on 04/11/2026.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
    
    static var previewTitles = [
        Title(id: 1, title: "Primetime", name: "Primetime", overview: "A movie with RP.", posterPath: Constants.testTitleURL),
        Title(id: 2, title: "Resident Evil", name: "Resident Evil", overview: "A movie about an everyday guy.", posterPath: Constants.tesTitleURL2),
        Title(id: 3, title: "The Remarried Empress", name: "The Remarried Empress", overview: "A spicy rom-com.", posterPath: Constants.tesTitleURL3)
    ]
}
