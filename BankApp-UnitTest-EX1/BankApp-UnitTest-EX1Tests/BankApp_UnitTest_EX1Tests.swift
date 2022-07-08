//
//  BankApp_UnitTest_EX1Tests.swift
//  BankApp-UnitTest-EX1Tests
//
//  Created by eidd5180 on 08/07/2022.
//

import XCTest
@testable import BankApp_UnitTest_EX1

class BankApp_UnitTest_EX1Tests: XCTestCase {

    func test_InitialBalanceZero() {

        let account = Account()
        XCTAssertTrue(account.balance == 0, "Balance is not zero!")
    }
}
