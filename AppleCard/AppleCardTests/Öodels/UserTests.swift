//
//  UserTests.swift
//  AppleCardTests
//
//  Created by mohamed  habib on 30/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import AppleCard

class When_18_or_above_person_applies_for_credit_card: XCTestCase {

    func test_should_make_sure_user_is_eligible()  {
        
        let dob = Calendar.current.date(byAdding: .year,value: -20, to: Date())
        let user = User(name: "john Doe", ssn: "123-45-2233", dob: dob!)
        
        XCTAssertTrue(user.isElligible)
    }
}

class test_a_user_less_than_18_years_apply_for_credit_card: XCTestCase {
    
    func test_shoud_deny_the_card()  {
        
        let dob = Calendar.current.date(byAdding: .year, value: -10, to: Date())
        let user = User(name: "jerry Doe", ssn: "123-45-22443", dob: dob!)
        
        XCTAssertFalse(user.isElligible)
    }
    
    
}
