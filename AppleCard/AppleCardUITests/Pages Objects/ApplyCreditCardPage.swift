//
//  ApplyCreditCardPage.swift
//  AppleCardUITests
//
//  Created by mohamed  habib on 01/08/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import XCTest

class ApplyCreditCardPage {
    
    func launch()  {
        XCUIApplication().launch()
    }
    
    func typeInName(_ text: String){
        
        let nameTextField = XCUIApplication().textFields["nameTextField"]
        nameTextField.tap()
        nameTextField.typeText(text + "\n" )
    }
    
    func typeInSSN(_ text: String){
        
        let ssnTextField = XCUIApplication().textFields["ssnTextField"]
        ssnTextField.tap()
        ssnTextField.typeText(text + "\n" )
    }
    
    func typeInDOB(_ text: String){
    let dobTextField = XCUIApplication().textFields["dobTextField"]
    dobTextField.tap()
    dobTextField.typeText("02/08/2006" + "\n" )
    }
    
    func tapApplyButton() {
        XCUIApplication().buttons["applyButton"].tap()
    }
    
    var messageText: String {
        let messageLabel = XCUIApplication().staticTexts[ "messageLabel"]
        return messageLabel.label
    }
    
    var messageLabel: XCUIElement {
        return XCUIApplication().staticTexts[ "messageLabel"]
    }
}
