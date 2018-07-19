//
//  BaseTest.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
//        app.launchArguments = ["deleteAllData"]
        continueAfterFailure = false
        app.launch()
    }
}

