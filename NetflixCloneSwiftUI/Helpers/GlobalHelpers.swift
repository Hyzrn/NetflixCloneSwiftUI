//
//  GlobalHelpers.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 4.09.2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel")
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["DysTopian","Exiting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators:"Baran bo Odan, Jantje Friese",
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel")
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
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel")
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
    promotionHeadline: "New series coming soon")
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
    cast:"Louis Hofmann, Oliver Masucci, Jordis Triebel")
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
    promotionHeadline: "Watch Season 6 Now")

let exampleMovies : [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after disappearances, the police form a task force. In 2052, Jonas learns that most of Winden persihed in an aplocalyptic event", season: 1, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}
