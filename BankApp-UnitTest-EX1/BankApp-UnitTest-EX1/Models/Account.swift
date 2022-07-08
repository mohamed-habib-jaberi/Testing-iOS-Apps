//
//  Account.swift
//  BankApp-UnitTest-EX1
//
//  Created by eidd5180 on 08/07/2022.
//

import Foundation

struct Account {
    var balance: Double = 0.0

    mutating func deposit(_ amount: Double) {
        self.balance += amount
    }
}
