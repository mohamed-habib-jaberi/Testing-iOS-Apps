//
//  CreditScoreServiceProtocol.swift
//  AppleCard
//
//  Created by mohamed  habib on 03/08/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

protocol CreditScoreServiceProtocol {
    
    func  getCreditScore(user: User, completion: @escaping (CreditScore?) -> Void)
    
}
