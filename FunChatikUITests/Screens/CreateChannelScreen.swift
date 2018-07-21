//
//  CreateChannelScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

class CreateChannelScreen: BaseScreen {
    
    let channelName = textFields["ChannelNameTextField"]
    let channelDesc = textFields["descriptionChannel"]
    let createChannelBtn = buttons["createChannelBtn"]
    
    
    func typeChannelName(channelNameTxt: String) {
        typeText(element: channelName, text: channelNameTxt)
    }
    
    func typeChannelDescription(channelDescTxt: String) {
        typeText(element: channelDesc, text: channelDescTxt)
    }
    
    func tapCreateChannelBtn() -> ChannelScreen {
        tap(element: createChannelBtn)
        return ChannelScreen()
    }
}
