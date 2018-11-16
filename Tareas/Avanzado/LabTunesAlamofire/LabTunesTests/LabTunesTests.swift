//
//  LabTunesTests.swift
//  LabTunesTests
//
//  Created by Itzel GoOm on 11/9/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import XCTest
@testable import LabTunes

class LabTunesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let session = Session.sharedInstance
        session.token = nil
        
        
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        
    }
    
    
    func testCorrectLogin(){
        XCTAssertTrue(User.login(userName: "iOSLab", password: "1234567890"))
        
    }
    
    func testWrongLogin(){
        XCTAssertFalse(User.login(userName: "Raul", password: "3455"))

    }
    
    func testSaveSession(){
        let session = Session.sharedInstance
        let _ = User.login(userName: "iOSLab", password: "1234567890")
        XCTAssertNotNil(session.token)
    }
    
    
    func testFailSaveSession(){
        let session = Session.sharedInstance
        let _ = User.login(userName: "hi", password: "223")
        XCTAssertNil(session.token)
        
        
    }

    
    func testExpectedToken(){
        let _ = User.login(userName: "iOSLab", password: "1234567890")
        let session = Session.sharedInstance
        XCTAssertEqual(session.token!,"1234567890","Token Should Match")

    }
    
    func testExpectedFailToken(){
        let _ = User.login(userName: "iOSLab", password: "1234567890")
        let session = Session.sharedInstance
        XCTAssertNotEqual(session.token!,"123456789","Error Token")
    }
    
    func testThrowsError(){
        XCTAssertThrowsError(try User.fetchSongs())
    }
    
    func testMusicSongs(){
        var resultSongs:[Song] = []
        let promise = expectation(description: "Song Download")
        Music.fetchSongs { (songs) in
            resultSongs = songs
            promise.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNotEqual(resultSongs.count, 0)
    }
    
    
    
    

    
}

