//
//  CreateAccountScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

class CreateAccountScreen: BaseScreen {
    let userName = textFields["userNameCreateAccount"]
    let email = textFields["emailCreateAccount"]
    let paswword = secureTextFields["passwordCreateAccount"]
    let chooseAvatar = buttons["chooseAvatarBtn"]
    let chooseBGColor = buttons["chooseBGColor"]
    let createAccountBtn = buttons["createAccountBtn"]
    
    func typeUserName(usernameTxt: String) {
        typeText(element: userName, text: usernameTxt)
    }
    
    func typeEmail(emailTxt: String) {
        typeText(element: email, text: emailTxt)
    }
    
    func typePassword(passwordTxt: String) {
        typeText(element: paswword, text: passwordTxt)
    }
    
    func tapChooseAvatar() {
        tap(element: chooseAvatar)
    }
    
    func tapCreateAccountBtn() -> ChannelScreen {
        tap(element: createAccountBtn)
        return ChannelScreen()
    }
    
    func tapChooseBGColor() {
        tap(element: chooseBGColor)
    }
    
}
