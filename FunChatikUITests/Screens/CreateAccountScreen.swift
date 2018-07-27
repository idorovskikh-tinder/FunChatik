//
//  CreateAccountScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class CreateAccountScreen: BaseScreen {
    let userName = textFields["userNameCreateAccount"]
    let email = textFields["emailCreateAccount"]
    let paswword = secureTextFields["passwordCreateAccount"]
    let chooseAvatar = buttons["chooseAvatarBtn"]
    let chooseBGColor = buttons["chosseBGColorBtn"]
    let createAccountBtn = buttons["createAccountBtn"]
    let createAccauntLbl = staticTexts["createAccountLbl"]
    let successAlert = alerts["Successfuly created!"]
    let okBtn = buttons["Wooooow"]
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(createAccountBtn.waitForExistence(timeout: globalTimeout), "CreateAccount Screen is not presented")
    }
    
    func typeUserName(usernameTxt: String) {
        typeText(element: userName, text: usernameTxt)
    }
    
    func typeEmail(emailTxt: String) {
        typeText(element: email, text: emailTxt)
    }
    
    func typePassword(passwordTxt: String) {
        typeText(element: paswword, text: passwordTxt)
    }
    
    func tapChooseAvatar() -> ChooseAvatarScreen {
        tap(element: chooseAvatar)
        return ChooseAvatarScreen()
    }
    
    func tapCreateAccountBtn() {
        tap(element: createAccountBtn)
    }
    
    func tapChooseBGColor() {
        tap(element: chooseBGColor)
    }
    
    func tapCreateAccountLbl() {
        tap(element: createAccauntLbl)
    }
    
    func tapOkBtn() {
        tap(element: okBtn)
    }
    
    func alertSuccessExists() -> Bool {
        return successAlert.waitForExistence(timeout: globalTimeout)
    }
}
