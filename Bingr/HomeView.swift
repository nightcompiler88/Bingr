//
//  HomeView.swift
//  Bingr
//
//  Created by MrK on 03/11/2026.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: heroTestTitle)) {
                    image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        Text(Constants.playString)
                            .ghostButton()
                    }
                    Button {
                        
                    } label: {
                        Text(Constants.downloadString)
                            .ghostButton()
                    }
                }
                
                HorizontalListView(header: Constants.trendingMoviesString)
                HorizontalListView(header: Constants.trendingTVString)
                HorizontalListView(header: Constants.topRatedMovieString)
                HorizontalListView(header: Constants.topRatedTVString)
            }
        }
    }
}

#Preview {
    HomeView()
}
