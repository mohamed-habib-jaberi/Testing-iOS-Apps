//
//  UnderAgeApplyingCardSteps.swift
//  AppleCardAcceptanceTests
//
//  Created by mohamed  habib on 25/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import Cucumberish
import XCTest

class UnderAgeApplyingCardSteps {
    func run() {
        
        let applyCreditCardPage = ApplyCreditCardPage()
        
        Given("the following user information") { args, userInfo in

            XCUIApplication().launch()

            let rows: NSArray = userInfo?["DataTable"] as! NSArray
            for index in 1..<rows.count{

                let data = rows[ index] as! NSArray
                let name = data[0] as! String
                let ssn = data[1] as! String
                let dob = data[2] as! String

//                let nameTextField = XCUIApplication().textFields["nameTextField"]
//                nameTextField.tap()
//                nameTextField.typeText(name + "\n" )
                
                applyCreditCardPage.typeInName(name)

//                let ssnTextField = XCUIApplication().textFields["ssnTextField"]
//                ssnTextField.tap()
//                ssnTextField.typeText(ssn + "\n" )
                
                applyCreditCardPage.typeInSSN(ssn)

//                let dobTextField = XCUIApplication().textFields["dobTextField"]
//                dobTextField.tap()
//                dobTextField.typeText(dob + "\n" )
                
                applyCreditCardPage.typeInDOB(dob)
            }
        }
        
        When("I press the apply button") { _, _ in
           // XCUIApplication().buttons["applyButton"].tap()
            applyCreditCardPage.tapApplyButton()
        }
        
        Then("I should get a rejection message") { _,_ in
           // let messageLabel = XCUIApplication().staticTexts[ "messageLabel"]
            
            let messageText = applyCreditCardPage.messageText
            XCTAssertEqual("Denied: Underage", messageText)
        }
    }
}
