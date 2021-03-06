//
//  HomeVM.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 4.09.2021.
//

import Foundation

class HomeVM: ObservableObject{
    @Published var movies : [String:[Movie]] = [:]
    
    public var allCategories : [String] {
        return movies.keys.map({String($0)})
    }
    
    public var allGenres : [HomeGenre] = [.allGenres, .action, .comedy, .horror, .thriller]
    
    public func getMovie (forCat cat:String, andHomeRow homeRow:HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat]?.filter({ ($0.movieType == .movie) && ($0.genre == genre) }) ?? [])
        case .tvShows:
            return (movies[cat]?.filter({($0.movieType == .tvShow) && ($0.genre == genre) }) ?? [])
        case .myList:
            return movies[cat] ?? []
        }
    }
    
    init() {
        setUpMovies()
    }
    
    func setUpMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
