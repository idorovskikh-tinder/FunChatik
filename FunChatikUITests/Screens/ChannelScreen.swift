//
//  ChannelScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class ChannelScreen: BaseScreen {
    
    let addChannel = buttons["addChannelButton"]
    //let channel = staticTexts
    let loginBtn = buttons["loginButton"]

    let failedAlert = alerts["Failed!"]
    let okBtn = buttons["GOT IT"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(loginBtn.waitForExistence(timeout: globalTimeout), "Channel Screen is not presented")
    }
    
    func tapLoginButton() {
        tap(element: loginBtn)
    }
    
    func tapAddChannel() {
        tap(element: addChannel)
    }
    
    func tapChannelName(name: XCUIElement) {
        tap(element: name)
    }
    
    func tapOkBtn() {
        tap(element: okBtn)
    }
       
    func alertFailed() -> Bool {
        return failedAlert.waitForExistence(timeout: globalTimeout)
    }
}
