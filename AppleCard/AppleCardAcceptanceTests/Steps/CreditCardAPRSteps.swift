//
//  CreditCardAPRSteps.swift
//  AppleCardAcceptanceTests
//
//  Created by mohamed  habib on 01/08/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import Cucumberish
import XCTest

class CreditCardAPRSteps {
    
    func run()  {
        
        let applyCreditCardPage = ApplyCreditCardPage()
        
        Given("the following userd aplied for the credit card"){ args, userInfo in
            applyCreditCardPage.launch()
            
            let rows: NSArray = userInfo?["DataTable"] as! NSArray
            for index in 1..<rows.count{

                let data = rows[ index] as! NSArray
                applyCreditCardPage.typeInName(data[0] as! String)
                applyCreditCardPage.typeInSSN(data[1] as! String)
                applyCreditCardPage.typeInDOB(data[2] as! String)
            }
        }
        
        When("the user press the apply button"){ _, _ in
            applyCreditCardPage.tapApplyButton()
        }
        
        Then("they should see the following APR rates"){ _, userInfo in
            
            let rows: NSArray = userInfo?["DataTable"] as! NSArray
            
            for index in 1..<rows.count{

                let data = rows[ index] as! NSArray
                
                let aprRate = data[1] as! String
                
                // compare the aprRate with messageLabel from the page Object
                let messageLabelVisible = applyCreditCardPage.messageLable.waitForExistence(timeout: 5.0)
                
                if messageLabelVisible{
                    XCTAssertEqual(aprRate, applyCreditCardPage.messageLabel.label)
                }
               
            }
        }
    }
}
