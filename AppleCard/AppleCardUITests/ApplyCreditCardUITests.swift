//
//  ApplyCreditCardUITests.swift
//  AppleCardUITests
//
//  Created by mohamed  habib on 31/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import AppleCard

class when_under_18_user_applies_for_credit_card: XCTestCase {

    private var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        self.app = XCUIApplication()
        self.app.launch()
        
    }
    
    func test_should_see_a_denied_message_on_the_screen()  {
       
        let nameTextField = self.app.textFields["nameTextField"]
        nameTextField.tap()
        nameTextField.typeText("john Doe" + "\n" )

        let ssnTextField = self.app.textFields["ssnTextField"]
        ssnTextField.tap()
        ssnTextField.typeText("123-4445-567" + "\n" )

        let dobTextField = self.app.textFields["dobTextField"]
        dobTextField.tap()
        dobTextField.typeText("02/08/2006" + "\n" )
        
        self.app.buttons["applyButton"].tap()
        
        let messageLabel = self.app.staticTexts[ "messageLabel"]
        
        XCTAssertEqual("Denied: Underage", messageLabel.label)
        
    }

}
