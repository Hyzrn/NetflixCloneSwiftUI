//
//  SearchResultGrid.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 17.10.2021.
//

import SwiftUI

struct SearchResultGrid: View {
    var movies: [Movie]
    @Binding var movieDetailToShow: Movie?
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(movies, id:\.id) { movie in
                StandartHomeMovie(movie: movie)
                    .frame(height:160)
                    .onTapGesture(perform: {
                        movieDetailToShow = movie
                    })
            }
        }
    }
}

struct SearchResultGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
