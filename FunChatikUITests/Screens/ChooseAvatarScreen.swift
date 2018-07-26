//
//  ChooseAvatarScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class ChooseAvatarScreen: BaseScreen {
    let backBtn = buttons["backBtnAvatarScreen"]
    let lightAvatars = buttons["Light"]
    let darkAvatars = buttons["Dark"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(lightAvatars.waitForExistence(timeout: globalTimeout), "ChooseAvatar Screen is not presented")
    }
    
    func tapDarkAvatarsChoice() {
        tap(element: darkAvatars)
    }
    
    func tapLightAvatarsChoice() {
        tap(element: lightAvatars)
    }
    
    func tapBackBtn() {
        tap(element: backBtn)
    }
}
