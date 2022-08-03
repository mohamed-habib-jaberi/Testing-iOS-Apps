//
//  CreditCard.swift
//  AppleCard
//
//  Created by mohamed  habib on 03/08/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class CreditCard {
    var user: User
    var apr: Double?
    
    init(user: User) {
        self.user = user
    }
}

extension CreditCard {
    
    func calculateAPR(service: CreditScoreServiceProtocol, completion: @escaping () -> Void) {
        
        service.getCreditScore(user: user) { creditScore in
            
            if let creditScore = creditScore {
                
                switch creditScore.score {
                    
                case 600..<700:
                    self.apr = 0.2
                case 700..<850:
                    self.apr = 0.06
                default:
                    self.apr = nil
                }
            }
            completion()
        }
        
    }
    
}
