//
//  MusicAlamofire.swift
//  LabTunes
//
//  Created by Itzel GoOm on 11/15/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import Foundation
import Alamofire

class MusicAlamofire{
    
    static func fetchSongAlamofire(songName: String = "Queen", onSuccess: @escaping ([Song]) -> Void){
        Alamofire.request("https://itunes.apple.com/search?media=music&entity=song&term=\(songName)").responseJSON { ( response ) in
            
            if let JSON = response.result.value{
                let songs = songsFrom(json: JSON as! NSDictionary)
                onSuccess(songs)
                
            }
        }
    }
    
    static func parseData(data: Data) -> NSDictionary? {
        let json = try! JSONSerialization.jsonObject(with: data, options:[]) as? NSDictionary
        return json
    }
    
    static func songsFrom(json: NSDictionary) -> [Song]{
        let results = json["results"] as! [NSDictionary]
        var songs:[Song] = []
        for dataResult in results{
            let song = Song.create(dict: dataResult)
            songs.append(song!)
        }
        return songs
    }
    
    
    
    
    
    
}


