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
    let password = secureTextFields["passwordTextField"]
    let loginBtn = buttons["loginButtonLoginScreen"]
    let signUpBtn = buttons["signUpButton"]
     //= app/*@START_MENU_TOKEN@*/.secureTextFields["passwordTextField"]/*[[".secureTextFields[\"password\"]",".secureTextFields[\"passwordTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    
    func typeEmail(emailText: String) {
        typeText(element: email, text: emailText)
    }
    
    func typePassword(passwordText: String) {
        typeText(element: password, text: passwordText)
    }
    
    func tapLoginBtn() -> ChannelScreen {
        tap(element: loginBtn)
        return ChannelScreen()
    }
    
    func tapSignUp() -> CreateAccountScreen {
        tap(element: signUpBtn)
        return CreateAccountScreen()
    }
    
}
