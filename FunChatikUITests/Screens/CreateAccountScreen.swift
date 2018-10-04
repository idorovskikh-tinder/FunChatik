//
//  CreateAccountScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class CreateAccountScreen: BaseScreen {
    private let userName = textFields["userNameCreateAccount"]
    private let email = textFields["emailCreateAccount"]
    private let paswword = secureTextFields["passwordCreateAccount"]
    private let chooseAvatar = buttons["chooseAvatarBtn"]
    private let chooseBGColor = buttons["chosseBGColorBtn"]
    private let createAccountBtn = buttons["createAccountBtn"]
    private let createAccauntLbl = staticTexts["createAccountLbl"]
    private let successAlert = alerts["Successfuly created!"]
    private let okBtn = buttons["Wooooow"]
    
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
