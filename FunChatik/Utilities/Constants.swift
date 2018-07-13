//
//  Constants.swift
//  FunChatik
//
//  Created by Natalia on 7/5/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()
//typealias make name of var to property
//examle: typealias Tala = String
//let name: Tala = "Tala"

// URL Constants (specific locations on our API)
let BASE_URL = "https://funchatik.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"


// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
