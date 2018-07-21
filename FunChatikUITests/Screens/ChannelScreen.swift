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
    
    func tapLoginButton() {
        tap(element: loginBtn)
    }
    
    func tapAddChannel() -> CreateChannelScreen {
        tap(element: addChannel)
        return CreateChannelScreen()
    }
    
    func tapChannelName(name: XCUIElement) {
        tap(element: name)
    }
    
}
