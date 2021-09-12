//
//  Trailer.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 12.09.2021.
//

import Foundation

struct Trailer:Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
