//
//  ChatScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

class ChatScreen: BaseScreen {
    let menuButton = buttons["menuBurgerButton"]
    
    func menuButtonTap() {
        tap(element: menuButton)
    }
}
