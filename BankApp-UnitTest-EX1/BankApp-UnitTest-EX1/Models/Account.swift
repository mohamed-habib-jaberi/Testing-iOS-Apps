//
//  Account.swift
//  BankApp-UnitTest-EX1
//
//  Created by eidd5180 on 08/07/2022.
//

import Foundation

enum AccountError: Error {
case insufficientFunds
}

struct Account {
    var balance: Double = 0.0

    mutating func deposit(_ amount: Double) {
        self.balance += amount
    }

    mutating func withdraw(_ amount: Double) throws {
        let netBalance = self.balance - amount
        if netBalance < 0 {
            throw AccountError.insufficientFunds
        } else {
            self.balance -= amount
        }


        self.balance -= amount
    }
}
