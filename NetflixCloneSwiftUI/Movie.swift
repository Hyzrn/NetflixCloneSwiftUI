//
//  Movie.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 4.09.2021.
//

import Foundation

struct Movie: Identifiable{
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
