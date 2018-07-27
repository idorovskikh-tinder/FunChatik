//
//  CreateChannel.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/26/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class ChannelsTests: BaseTest {
    
    func testCreateChannelWithLogin() {
        XCTContext.runActivity(named: "login") { activity in
            let loginUser = LoginUser()
            loginUser.testLoginExistingUser()
        }
        XCTContext.runActivity(named: "to create channel screen") { activity in
            let channelScreen = ChannelScreen()
            _ = channelScreen.tapAddChannel()
        }
        XCTContext.runActivity(named: "create channel") { activity in
            let createChannel = CreateChannelScreen()
            createChannel.typeChannelName(channelNameTxt: CreateData.newChannel)
            createChannel.typeChannelDescription(channelDescTxt: CreateData.newChannel)
            createChannel.tapCreateChannelBtn()
            XCTAssertTrue(createChannel.alertSuccessExists())
            createChannel.tapOkBtn()
        }
    }
    
    func testCreateChannelWithoutLogin() {
        XCTContext.runActivity(named: "to channel Screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to create channel screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapAddChannel()
            XCTAssertTrue(channelScreen.alertFailed())
            channelScreen.tapOkBtn()            
        }
    }
    
    func testSendMessage() {
        XCTContext.runActivity(named: "login") { activity in
            let loginUser = LoginUser()
            loginUser.testLoginExistingUser()
        }
        XCTContext.runActivity(named: "send message") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
            chatScreen.typeMesage(message: "HelloTest")
            chatScreen.tapSendMessage()
        }
    }    
}
