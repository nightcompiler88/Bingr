//
//  YoutubePlayer.swift
//  Bingr
//
//  Created by MrK on 16/11/2026.
//

import SwiftUI
import WebKit

struct YoutubePlayer: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let videoId: String
    let youtubeBaseURL = APIConfig.shared?.youtubeBaseURL

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        return WKWebView(frame: .zero, configuration: config)
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let baseURLString = youtubeBaseURL,
              let baseURL = URL(string: baseURLString) else { return }

        let fullURL = baseURL.appending(path: videoId)
        guard webView.url != fullURL else { return }

        var request = URLRequest(url: fullURL)
        let bundleID = Bundle.main.bundleIdentifier ?? "bingr"
        request.setValue("https://\(bundleID)", forHTTPHeaderField: "Referer")
        webView.load(request)
    }
}
