# Bingr
Bingr is a streaming-style movie and TV discovery app for iOS, built with SwiftUI. Browse trending and top-rated titles, see what's coming soon, search the catalogue, watch trailers, and save titles to a personal "Downloads" list.

Movie and TV data comes from TMDB and trailers are found through the Youtube Data API and played in an embedded web player.

## Features

- **Home**: a random hero poster plus horizontal carousels for Trending Movies, Trending TV, Top Rated Movies and Top Rated TV
- **Upcoming**: a vertical list of upcoming movies.
- **Search**: debounced (500 ms) search with a toggle between movies and TV shows. An empty search shows trending titles.
- **Title details**: embedded Youtube trailer, title overview and a Download button.
- **Downloads**: titles you save are persisted on-device with SwiftData, swipe left to delete.
- **Loading and error states**: progress indicators while fetching and readable error messages on failure.

> **Note**: "Download" saves the title's metadata locally (title, overview, poster URL). It does not download video.

## Tech Stack
 
| Area | Technology |
| --- | --- |
| UI | SwiftUI (`TabView` with `Tab`, `NavigationStack`, `AsyncImage`, `LazyVGrid`) |
| State | Observation framework (`@Observable`) |
| Persistence | SwiftData (`@Model`, `@Query`) |
| Networking | `URLSession` with `async/await` and `async let` for concurrent requests |
| Video | `WKWebView` wrapped in `UIViewRepresentable` |
| APIs | TMDB v3, YouTube Data API v3 (search) |

## Tech Stack
 
| Area | Technology |
| --- | --- |
| UI | SwiftUI (`TabView` with `Tab`, `NavigationStack`, `AsyncImage`, `LazyVGrid`) |
| State | Observation framework (`@Observable`) |
| Persistence | SwiftData (`@Model`, `@Query`) |
| Networking | `URLSession` with `async/await` and `async let` for concurrent requests |
| Video | `WKWebView` wrapped in `UIViewRepresentable` |
| APIs | TMDB v3, YouTube Data API v3 (search) |

## Project Structure
 
```
Bingr
├── BingrApp.swift              App entry point, SwiftData model container
├── ContentView.swift           Root TabView (Home, Upcoming, Search, Download)
│
├── Views
│   ├── HomeView.swift          Hero poster and category carousels
│   ├── UpcomingView.swift      Upcoming movies list
│   ├── SearchView.swift        Movie/TV search with poster grid
│   ├── DownloadView.swift      Saved titles (SwiftData @Query)
│   ├── TitleDetailView.swift   Trailer, overview, save button
│   ├── HorizontalListView.swift  Reusable poster carousel
│   ├── VerticalListView.swift    Reusable list with optional swipe-to-delete
│   └── YoutubePlayer.swift     WKWebView wrapper for embedded trailers
│
├── View Models
│   ├── ViewModel.swift         Home, upcoming and trailer fetch state
│   └── SearchViewModel.swift   Search state and error handling
│
├── Networking
│   ├── DataFetcher.swift       TMDB and YouTube requests, URL building, decoding
│   ├── APIConfig.swift         Loads keys and URLs from APIConfig.json
│   └── Errors.swift            APIConfigError and NetworkError
│
├── Models
│   ├── Title.swift             SwiftData model and TMDB response type
│   └── YoutubeSearchResponse.swift  YouTube search decoding
│
└── Constants.swift             Strings, SF Symbol names, shared view modifiers
```

## Acknowledgements
 
- This is a follow-along from [freeCodeCamp.org and Blossom Build](https://www.youtube.com/watch?v=-VC3hIEL7eQB)
- Movie and TV metadata and images provided by [TMDB](https://www.themoviedb.org/). This product uses the TMDB API but is not endorsed or certified by TMDB.
- Trailers served through [YouTube](https://www.youtube.com/).
