//
//  CreateChannelScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class CreateChannelScreen: BaseScreen {
    
    let channelName = textFields["channelNameTextField"]
    let channelDesc = textFields["descriptionChannel"]
    let createChannelBtn = buttons["createChannelBtn"]
    let successfulAlert = alerts["Congratulations!"]
    let okBtn = buttons["Yeeeey"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(createChannelBtn.waitForExistence(timeout: globalTimeout), "CreateChannel Screen is not presented")
    }
        
    func typeChannelName(channelNameTxt: String) {
        typeText(element: channelName, text: channelNameTxt)
    }
    
    func typeChannelDescription(channelDescTxt: String) {
        typeText(element: channelDesc, text: channelDescTxt)
    }
    
    func tapCreateChannelBtn() {
        tap(element: createChannelBtn)
    }
    
    func tapOkBtn() {
        tap(element: okBtn)
    }
    
    func alertSuccessExists() -> Bool {
        return successfulAlert.waitForExistence(timeout: globalTimeout)
    }
}
