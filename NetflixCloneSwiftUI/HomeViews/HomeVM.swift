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
    
    public func getMovie (forCat cat:String) -> [Movie] {
        return movies[cat] ?? []
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
