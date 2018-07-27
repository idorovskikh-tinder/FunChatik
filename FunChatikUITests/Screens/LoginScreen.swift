//
//  LoginScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    
    let email = textFields["emailTextField"]
    let password = secureTextFields["passwordTextField"]
    let loginBtn = buttons["loginButtonLoginScreen"]
    let signUpBtn = buttons["signUpButton"]
    let lable = staticTexts["funChatikLblLoginScrren"]
    let closeBtn = buttons["closeButtonLoginScreen"]
    let successAlert = alerts["Success!"]
    let failedAlert = alerts["Failed!"]
    let okBtn = buttons["OK"]
    
    
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
