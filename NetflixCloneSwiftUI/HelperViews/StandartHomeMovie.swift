//
//  StandartHomeMovie.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 4.09.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct StandartHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
//        GeometryReader { proxy in
//        KFImage(movie.thumbnailURL)
//        .resizable()
//        .aspectRatio(contentMode: .fill)
//        .frame(width: proxy.size.width, height: proxy.size.height)
//        .clipped()
//        }
    }
    
}

struct StandartHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMovie1)
            
    }
}
