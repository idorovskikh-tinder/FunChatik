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
        chatScreen.menuButtonTap()
    }
    
    func testLogin() {
        let chatScreen = ChatScreen()
        let channelScreen = chatScreen.menuButtonTap()
        channelScreen.tapLoginButton()
        
        let loginScreen = LoginScreen()
        loginScreen.typeEmail(emailText: CreateData.existUser)
        loginScreen.typePassword(passwordText: CreateData.existUser)
        _ = loginScreen.tapLoginBtn()
    }
    
    func testCreateChannel() {
        testLogin()
        let channelScreen = ChannelScreen()
        let createChannel = channelScreen.tapAddChannel()
        createChannel.typeChannelName(channelNameTxt: CreateData.newChannel)
        createChannel.typeChannelDescription(channelDescTxt: CreateData.newChannel)
        _ = createChannel.tapCreateChannelBtn()
    }
    
    func testCreateuser() {
        let chatScreen = ChatScreen()
        let channelScreen = chatScreen.menuButtonTap()
        channelScreen.tapLoginButton()
        let loginScreen = LoginScreen()
        let createAccountScreen = loginScreen.tapSignUp()
        createAccountScreen.typeUserName(usernameTxt: CreateData.newUniqueUser)
        createAccountScreen.typeEmail(emailTxt: CreateData.newUniqueUser)
        createAccountScreen.typePassword(passwordTxt: CreateData.newUniqueUser)
        _ = createAccountScreen.tapCreateAccountBtn()
        
    }
    
    func sendMessage() {
        testLogin()
    }
    
    func testCheckProfile() {
        testLogin()
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
        
    }
    
    func testChooseLightAvatar() {
        
    }
    
}
