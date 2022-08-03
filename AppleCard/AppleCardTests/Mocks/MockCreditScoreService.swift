//
//  MockCreditScoreService.swift
//  AppleCardTests
//
//  Created by mohamed  habib on 03/08/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
@testable import AppleCard

class MockCreditScoreService: CreditScoreServiceProtocol {
    
    func getCreditScore(user: User, completion: @escaping (CreditScore?) -> Void) {
        
        let creditScore = CreditScore(score: 750)
        completion(creditScore)
    }
    
}

