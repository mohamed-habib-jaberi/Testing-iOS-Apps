//
//  BankApp_UnitTest_EX1Tests.swift
//  BankApp-UnitTest-EX1Tests
//
//  Created by eidd5180 on 08/07/2022.
//

import XCTest
@testable import BankApp_UnitTest_EX1

class BankApp_UnitTest_EX1Tests: XCTestCase {

    private var account: Account!

    override func setUp() {
        super.setUp()
        // the code inside setUp function will be executed before each test

        self.account = Account()

    }

    func test_InitialBalanceZero() {

        XCTAssertTrue(self.account.balance == 0, "Balance is not zero!")
    }

    func test_DepositFunds() {

        self.account.deposit(100)
        XCTAssertEqual(100, self.account.balance)
    }

    override class func tearDown() {
        super.tearDown()

        // this function is called after each test
        
    }
}
