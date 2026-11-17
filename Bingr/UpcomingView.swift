//
//  UpcomingView.swift
//  Bingr
//
//  Created by MrK on 17/11/2026.
//

import SwiftUI

struct UpcomingView: View {
    var body: some View {
        VerticalListView(titles: Title.previewTitles)
    }
}

#Preview {
    UpcomingView()
}
