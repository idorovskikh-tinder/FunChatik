//
//  ProfileScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class ProfileScreen: BaseScreen {
    
    private let closeBtn = buttons["closeProfileButton"]
    private let profileLbl = staticTexts["yourProfileLable"]
    private let logoutBtn = buttons["logoutProfileButton"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(logoutBtn.waitForExistence(timeout: globalTimeout), "Chat Screen is not presented")
    }
    
    func tapCloseProfileBtn() {
        tap(element: closeBtn)
    }
    
    func tapProfileLbl() {
        tap(element: profileLbl)
    }
    
    func tapLogout() {
        tap(element: logoutBtn)
    }
}
