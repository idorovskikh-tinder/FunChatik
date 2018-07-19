//
//  LoginScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

class LoginScreen: BaseScreen {
    
    let signUpBtn = buttons["signUpButton"]
   
    func tapSignUp() {
        tap(element: signUpBtn)
    }
    
}
