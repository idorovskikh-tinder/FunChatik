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
    let paswword = textFields["passwordCreateAccount"]
    let chooseAvatar = buttons["chooseAvatarBtn"]
    let chooseBGColor = buttons["chooseBGColor"]
    let createAccountBtn = buttons["createAccountBtn"]

    func tapChooseAvatar() {
        tap(element: chooseAvatar)
    }
    
    func tapCreateAccountBtn() {
        tap(element: createAccountBtn)
    }
    
    func tapChooseBGColor() {
        tap(element: chooseBGColor)
    }
}
