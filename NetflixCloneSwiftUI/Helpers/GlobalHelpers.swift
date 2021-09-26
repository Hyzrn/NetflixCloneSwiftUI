//
//  GlobalHelpers.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 4.09.2021.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/160")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/150")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/140")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1,exampleTrailer2,exampleTrailer3]

let episode1 = Episode(name: "Beginnings and Endings", season: 1, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/110", description: "Six months after disappearances, the police form a task force. In 2052, Jonas learns that most of Winden persihed in an aplocalyptic event", length: 54, videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter", season: 1, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/110/", description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987", length: 54, videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts", season: 1, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/300/111", description: "In 1954, a missing Helge returns, but he'll only speak to Noah.", length: 56, videoURL: exampleVideoURL)
let episode4 = Episode(name: "Beginnings and Endings", season: 2, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/140", description: "Six months after disappearances, the police form a task force. In 2052, Jonas learns that most of Winden persihed in an aplocalyptic event", length: 54, videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter", season: 2, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/131", description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987", length: 54, videoURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts", season: 2, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/300/122", description: "In 1954, a missing Helge returns, but he'll only speak to Noah.", length: 56, videoURL: exampleVideoURL)

let allExampleEpisodes = [episode1,episode2, episode3, episode4, episode5, episode6]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie3, exampleMovie2, exampleMovie4, exampleMovie5,exampleMovie6,exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    genre: .action,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "New series coming soon",
    trailers: exampleTrailers)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie3, exampleMovie2],
    trailers: exampleTrailers)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)

var exampleMovies : [Movie] { [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after disappearances, the police form a task force. In 2052, Jonas learns that most of Winden persihed in an aplocalyptic event", season: 1, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String  {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
