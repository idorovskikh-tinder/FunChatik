//
//  BaseScreen.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/18/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class BaseScreen {
    static let app = XCUIApplication()
    static let buttons = app.buttons
    static let textFields = app.textFields
    static let tableCells = app.tables.cells
    static let secureTextFields = app.secureTextFields
    static let staticTexts = app.staticTexts
    static let collectionViews = app.collectionViews
    static let alerts = app.alerts
    //static let collectionViews = app.collectionViews
    static let images = app.images

    let globalTimeout = 20.0
    
    required init() {
        
    }
    
    func tap(element: XCUIElement) {
        element.tap()
    }
    
    func typeText(element: XCUIElement, text: String) {
        guard element.elementType == .textField || element.elementType == .secureTextField else {return}
        tap(element: element)
        element.typeText(text)
    }
}
