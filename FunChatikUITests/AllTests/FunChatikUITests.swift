//
//  FunChatikUITests.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/20/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class FunChatikUITests: BaseTest {
        
    
    
    func testExample() {
        let chatScreen = ChatScreen()
        chatScreen.tapTestLogoutBtn()
    }
    
    func testLogin() {
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
            _ = loginScreen.tapLoginBtn()
        }
    }
    
    func testCreateChannel() {
        XCTContext.runActivity(named: "login") { activity in
            testLogin()
        }
        XCTContext.runActivity(named: "to create channel screen") { activity in
            let channelScreen = ChannelScreen()
            _ = channelScreen.tapAddChannel()
        }
        XCTContext.runActivity(named: "create channel") { activity in
            let createChannel = CreateChannelScreen()
            createChannel.typeChannelName(channelNameTxt: CreateData.newChannel)
            createChannel.typeChannelDescription(channelDescTxt: CreateData.newChannel)
            _ = createChannel.tapCreateChannelBtn()
        }
    }
    
    func testCreateuser() {
        XCTContext.runActivity(named: "to channel screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "to create user screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapSignUp()
        }
        XCTContext.runActivity(named: "create new user") { activity in
            let createAccountScreen = CreateAccountScreen()
            createAccountScreen.typeUserName(usernameTxt: CreateData.newUniqueUser)
            createAccountScreen.typeEmail(emailTxt: CreateData.newUniqueUser)
            createAccountScreen.typePassword(passwordTxt: CreateData.newUniqueUser)
            _ = createAccountScreen.tapCreateAccountBtn()
        }
    }
    
    func testSendMessage() {
        testLogin()
        let chatScreen = ChatScreen()
        chatScreen.menuButtonTap()
        chatScreen.typeMesage(message: "HelloTest")
        chatScreen.tapSendMessage()
        
    }
    
    func testCheckProfile() {
        XCTContext.runActivity(named: "login") { activity in
            testLogin()
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
            testLogin()
        }
        XCTContext.runActivity(named: "to profile screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
            //sleep(3)
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
    
    func testChannelName() {
        testCreateChannel()
//        let channelScreen = ChannelScreen()
//        channelScreen.tapChannelName(name: CreateData.newChannel)
//
//        let app = XCUIApplication()
//        let tablesQuery = app.tables
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["#my channel"]/*[[".cells.staticTexts[\"#my channel\"]",".staticTexts[\"#my channel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//        let menuburgerbuttonButton = app/*@START_MENU_TOKEN@*/.buttons["menuBurgerButton"]/*[[".buttons[\"smackBurger\"]",".buttons[\"menuBurgerButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        menuburgerbuttonButton.tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["#fkg"]/*[[".cells.staticTexts[\"#fkg\"]",".staticTexts[\"#fkg\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        menuburgerbuttonButton.tap()
        
    }
    
    func testChooseDarkAvatar() {
        XCTContext.runActivity(named: "to channel screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "to create user screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapSignUp()
        }
        XCTContext.runActivity(named: "create new user") { activity in
            let createAccountScreen = CreateAccountScreen()
            createAccountScreen.typeUserName(usernameTxt: CreateData.newUniqueUser)
            createAccountScreen.typeEmail(emailTxt: CreateData.newUniqueUser)
            createAccountScreen.typePassword(passwordTxt: CreateData.newUniqueUser)
            let chooseAvatarScreen = createAccountScreen.tapChooseAvatar()
            //chooseAvatarScreen.tapDarkAvatars()
            
        }
        
        
    }
    
    func testChooseLightAvatar() {
        
        XCTContext.runActivity(named: "to channel screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "to create user screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapSignUp()
        }
        XCTContext.runActivity(named: "create new user") { activity in
            let createAccountScreen = CreateAccountScreen()
            createAccountScreen.typeUserName(usernameTxt: CreateData.newUniqueUser)
            createAccountScreen.typeEmail(emailTxt: CreateData.newUniqueUser)
            createAccountScreen.typePassword(passwordTxt: CreateData.newUniqueUser)
            let chooseAvatarScreen = createAccountScreen.tapChooseAvatar()
            chooseAvatarScreen.tapLightAvatarsChoice()
            chooseAvatarScreen.tapBackBtn()
        }
        
    }
    
}
