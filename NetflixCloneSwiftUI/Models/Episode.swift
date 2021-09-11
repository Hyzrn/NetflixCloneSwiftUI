//
//  Episode.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 11.09.2021.
//

import Foundation

struct Episode :Identifiable {
    var id = UUID().uuidString
    
    var name:String
    var season: Int
    var thumbnailImageURLString:String
    var description:String
    var length: Int

    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
