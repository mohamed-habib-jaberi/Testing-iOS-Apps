//
//  CreditCardTests.swift
//  AppleCardTests
//
//  Created by mohamed  habib on 03/08/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import AppleCard

class when_calculating_apr_based_on_credit_score: XCTestCase {

    func test_should_calculate_apr_successfully() {
        
        let user = User(name: "John Doe", ssn: "123-45-2222", dob: "02-05-1975".toDate())
        let card = CreditCard(user: user)
        
        let exp = expectation(description: "Credit Score has been loaded...")
        let service = MockCreditScoreService()
        
        card.calculateAPR(service: service) {
            XCTAssertEqual(0.06, card.apr!)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 10.0)
        
    }

}
