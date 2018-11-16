//
//  Song.swift
//  LabTunes
//
//  Created by Itzel GoOm on 11/9/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import Foundation
struct Song {
    var artist:String
    var name:String
    static func create(dict: NSDictionary) -> Song?{
        guard let trackName = dict["trackName"] as? String else{
            return nil
        }
        guard let artist = dict["trackName"] as? String else {
            return nil
        }
        return Song(artist: artist, name: artist)
    }
}
