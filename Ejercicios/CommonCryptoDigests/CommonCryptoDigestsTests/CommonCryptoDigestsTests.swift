//
//  CommonCryptoDigestsTests.swift
//  CommonCryptoDigestsTests
//
//  Created by Itzel GoOm on 06/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import XCTest
@testable import CommonCryptoDigests

class CommonCryptoDigestsTests: XCTestCase {
    
    
    let lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla imperdiet laoreet diam, at ultricies orci eleifend eu. Praesent nec laoreet nisl. Donec ut faucibus mi. Pellentesque laoreet nisi non quam euismod, posuere lobortis sapien facilisis. Proin ullamcorper lobortis leo, in ullamcorper diam suscipit vitae. Aliquam hendrerit sem id feugiat maximus. Quisque placerat felis leo, a luctus ex egestas in."
    
    func testSha1(){
    let result = Digests.sha1(string: lipsum)
    XCTAssertEqual("d09a04ace5c38689faa6d18338902da7539f8f74", result)
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
