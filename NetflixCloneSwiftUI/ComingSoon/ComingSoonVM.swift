//
//  ComingSoonVM.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 30.10.2021.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}

