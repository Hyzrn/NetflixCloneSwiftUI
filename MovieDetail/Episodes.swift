//
//  Episodes.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 12.09.2021.
//

import SwiftUI

struct Episodes: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({$0.season == season})
    }
    
    var body: some View {
        
        VStack(spacing:14) {
            //Season Picker
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size:16))
                   
                })
                
                Spacer()
            }
            
            
            //Episodes List
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment:.leading) {
                    HStack {
                        VideoPreviewImage(imageURL: episode.videoURL, videoURL: episode.thumbnailURL)
                            .frame(width: 120, height: 70)
                        VStack(alignment:.leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                        
                    }
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal,20)
        
    }
}

struct Episodes_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Episodes(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}