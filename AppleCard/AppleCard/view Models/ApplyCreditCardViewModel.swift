//
//  ApplyCreditCardViewModel.swift
//  AppleCard
//
//  Created by mohamed  habib on 29/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class ApplyCreditCardViewModel: ObservableObject {
    var name: String = ""
    var ssn: String = ""
    var dob: String = ""
    
   @Published var message: String = ""
    
    var service: CreditScoreServiceProtocol
    
    init(service: CreditScoreServiceProtocol) {
        self.service = service
    }
    
    private var user: User {
       
        return User(name: self.name, ssn: self.ssn, dob: self.dob.toDate()!)
    }
    
    func apply() {
        if !user.isElligible{
            self.message = "Denied: Underage"
        }
    }
}
