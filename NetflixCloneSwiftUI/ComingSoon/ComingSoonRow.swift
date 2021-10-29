//
//  ComingSoonRaw.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 29.10.2021.
//

import SwiftUI
import KingfisherSwiftUI
import AVKit

struct ComingSoonRow: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    let screen = UIScreen.main.bounds
    var player: AVPlayer {
        AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=DbBNU2j8v88")!)
    }
    
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(height:200)
            
            VStack {
                HStack {
                    KFImage(movie.thumbnailURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 3, height: 75)
                        .clipped()
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        VStack(spacing:6) {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("Remind Me")
                        }
                    }).padding(.horizontal)
                    
                    Button(action: {
                        movieDetailToShow = movie
                    }, label: {
                        VStack(spacing:6) {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("Info")
                        }
                    }).padding(.trailing, 24)
                }
                .font(.caption)
                
                VStack(alignment:.leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    Text(movie.episodeDescriptionDisplay)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal)
        }
    }
}

struct ComingSoonRaw_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ComingSoonRow(movie: exampleMovie1, movieDetailToShow: .constant(nil))
        }
    }
}
