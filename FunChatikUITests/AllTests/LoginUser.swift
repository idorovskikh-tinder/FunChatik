//
//  FunChatikUITests.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/20/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class LoginUser: BaseTest {
    
    func testLoginExistingUser() {
        XCTContext.runActivity(named: "to channel Screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "try to login") { activity in
            let loginScreen = LoginScreen()
            loginScreen.typeEmail(emailText: CreateData.existUser)
            loginScreen.typePassword(passwordText: CreateData.existUser)
            loginScreen.tapLoginBtn()
//            XCTAssertTrue(loginScreen.alertSuccessExists())
//            loginScreen.tapOkBtn()
        }        
    }
    
    func testCheckProfile() {
        XCTContext.runActivity(named: "login") { activity in
            testLoginExistingUser()
        }
        XCTContext.runActivity(named: "to profile screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "check profile screen") { activity in
            let profileScreen = ProfileScreen()
            profileScreen.tapProfileLbl()
            profileScreen.tapCloseProfileBtn()
        }
    }
    
    func testLogout() {
        XCTContext.runActivity(named: "login") { activity in
            testLoginExistingUser()
        }
        XCTContext.runActivity(named: "to profile screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "logout") { activity in
            let profileScreen = ProfileScreen()
            profileScreen.tapProfileLbl()
            profileScreen.tapLogout()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen2 = ChannelScreen()
            channelScreen2.tapLoginButton()
        }
        XCTContext.runActivity(named: "check if it login screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapLable()
            loginScreen.tapCloseBtn()
        }
    }
    
    func testLoginUnregisterUser() {
        XCTContext.runActivity(named: "to channel Screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "try to login") { activity in
            let loginScreen = LoginScreen()
            loginScreen.typeEmail(emailText: "1")
            loginScreen.typePassword(passwordText: "1")
            loginScreen.tapLoginBtn()
            XCTAssertTrue(loginScreen.alertFailed())
            loginScreen.tapOkBtn()
        }
    }
}
