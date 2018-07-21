//
//  LoginScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

class LoginScreen: BaseScreen {
    
    let email = textFields["emailTextField"]
    let password = textFields["passwoedTextField"]
    let signUpBtn = buttons["signUpButton"]
    
    func typeEmail(emailText: String) {
        typeText(element: email, text: emailText)
    }
    
    func typePassword(passwordText: String) {
        typeText(element: password, text: passwordText)
    }
    
    func tapSignUp() {
        tap(element: signUpBtn)
    }
    
}
