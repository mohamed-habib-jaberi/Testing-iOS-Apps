//
//  ApplyCreditCardViewModelTests.swift
//  AppleCardTests
//
//  Created by eidd5180 on 29/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import AppleCard

class When_qualified_user_apply_for_credit_card: XCTestCase {
    
    func test_should_set_the_correct_apr_rate()  {
        let service = CreditScoreService()
        let applyCreditCardVM = ApplyCreditCardViewModel(service: service)

        applyCreditCardVM.name = "Mary Doe"
        applyCreditCardVM.ssn = "123-45-56789"
        applyCreditCardVM.dob = "02/03/1978"
        
        applyCreditCardVM.apply()
        
        XCTAssertEqual(applyCreditCardVM.message, "0.06%")
    }
}

class When_credit_card_is_denied_due_to_age: XCTestCase {

    func test_should_set_under_age_message_successfully() {
        let applyCreditCardVM = ApplyCreditCardViewModel()

        applyCreditCardVM.name = "Mary Doe"
        applyCreditCardVM.ssn = "123-45-56789"
        applyCreditCardVM.dob = "02/03/2017"

        applyCreditCardVM.apply()

        XCTAssertEqual(applyCreditCardVM.message, "Denied: Underage")
    }
}
