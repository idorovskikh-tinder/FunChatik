//
//  ChatScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class ChatScreen: BaseScreen {
    
    private let menuButton = buttons["menuBurgerButton"]
    private let messegeField = textFields["messageSendChatField"]
    private let sendMessageBtn = buttons["sendMessageBtn"]
    
    private let testLogoutBtn = buttons["testLogoutBtn"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(menuButton.waitForExistence(timeout: globalTimeout), "Chat Screen is not presented")
    }
    
    func tapTestLogoutBtn() {
        tap(element: testLogoutBtn)
    }
    
    func menuButtonTap() {
        tap(element: menuButton)
    }
    
    func typeMesage(message: String) {
        typeText(element: messegeField, text: message)
    }
    
    func tapSendMessage() {
        tap(element: sendMessageBtn)
    }
}
