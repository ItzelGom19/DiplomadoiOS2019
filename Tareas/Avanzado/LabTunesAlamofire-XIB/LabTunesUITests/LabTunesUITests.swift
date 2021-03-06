//
//  LabTunesUITests.swift
//  LabTunesUITests
//
//  Created by Itzel GoOm on 11/9/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import XCTest

class LabTunesUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAppLogin() {
        let app = XCUIApplication()
        let nameTextField = app.textFields["usernametextfield"]
        nameTextField.tap()
        nameTextField.typeText("iOSLab")
        
        let passwordTextField = app.secureTextFields["passwordtextfield"]
        passwordTextField.tap()
        passwordTextField.typeText("1234567890")
        
        let loginButton = app.buttons["loginbutton"]
        loginButton.tap()
        XCTAssertTrue(app.isDisplayingMusic)
    }

}
extension XCUIApplication{
    var isDisplayingMusic: Bool {
        return otherElements["MusicView"].exists
    }
}

