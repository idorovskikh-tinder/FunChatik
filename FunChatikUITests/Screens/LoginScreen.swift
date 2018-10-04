//
//  LoginScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    
    private let email = textFields["emailTextField"]
    private let password = secureTextFields["passwordTextField"]
    private let loginBtn = buttons["loginButtonLoginScreen"]
    private let signUpBtn = buttons["signUpButton"]
    private let lable = staticTexts["funChatikLblLoginScrren"]
    private let closeBtn = buttons["closeButtonLoginScreen"]
    private let successAlert = alerts["Success!"]
    private let failedAlert = alerts["Failed!"]
    private let okBtn = buttons["OK"]
    
    
    required init() {
        super .init()
        visible()
    }
    
    func visible() {
        XCTAssertTrue(lable.waitForExistence(timeout: globalTimeout), "Login Screen is not presented")
    }
    
    func typeEmail(emailText: String) {
        typeText(element: email, text: emailText)
    }
    
    func typePassword(passwordText: String) {
        typeText(element: password, text: passwordText)
    }
    
    func tapLoginBtn() {
        tap(element: loginBtn)
    }
    
    func tapSignUp() -> CreateAccountScreen {
        tap(element: signUpBtn)
        return CreateAccountScreen()
    }
    
    func tapLable() {
        tap(element: lable)
    }
    
    func tapCloseBtn() {
        tap(element: closeBtn)
    }
    
    func tapOkBtn() {
        tap(element: okBtn)
    }
        
    func alertSuccessExists() -> Bool {
        return successAlert.waitForExistence(timeout: globalTimeout)
    }
    
    func alertFailed() -> Bool {
        return failedAlert.waitForExistence(timeout: globalTimeout)
    }
    
}
