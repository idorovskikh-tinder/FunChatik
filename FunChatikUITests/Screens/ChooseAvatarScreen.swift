//
//  ChooseAvatarScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class ChooseAvatarScreen: BaseScreen {
    private let backBtn = buttons["backBtnAvatarScreen"]
    private let lightAvatars = buttons["Light"]
    private let darkAvatars = buttons["Dark"]
    private let choosenImg = BaseScreen.collectionViews.children(matching: .cell).element(boundBy: 1).images["avatarImage"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(lightAvatars.waitForExistence(timeout: globalTimeout), "ChooseAvatar Screen is not presented")
    }
    
    func tapAvatar() -> CreateAccountScreen{
        XCUIApplication().collectionViews.children(matching: .cell).element(boundBy: 0).otherElements.containing(.image, identifier:"avatarImage").element.tap()
        return CreateAccountScreen()
    }
    
    func tapImg() -> CreateAccountScreen {
        tap(element: choosenImg)
        return CreateAccountScreen()
    }
    
    func tapDarkAvatarsChoice() {
        tap(element: darkAvatars)
    }
    
    func tapLightAvatarsChoice() {
        tap(element: lightAvatars)
    }
    
    func tapBackBtn() -> CreateAccountScreen {
        tap(element: backBtn)
        return CreateAccountScreen()
    }
}
