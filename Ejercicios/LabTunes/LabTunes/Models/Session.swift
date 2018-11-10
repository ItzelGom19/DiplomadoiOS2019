//
//  Session.swift
//  LabTunes
//
//  Created by Itzel GoOm on 11/9/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import Foundation

class Session: NSObject{
    var token: String?
    static let sharedInstance = Session()
    override private init() {
        super.init()
    }
    
    func saveSession(){
        token = "1234567890"
    }
}

