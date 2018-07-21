//
//  ChannelScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

class ChannelScreen: BaseScreen {
    
    let addChannel = buttons["addChannelButton"]
    let loginBtn = buttons["loginButton"]
    
    func tapLoginButton() {
        tap(element: loginBtn)
    }
    
    func tapAddChannel() -> CreateChannelScreen {
        tap(element: addChannel)
        return CreateChannelScreen()
    }
    
}
