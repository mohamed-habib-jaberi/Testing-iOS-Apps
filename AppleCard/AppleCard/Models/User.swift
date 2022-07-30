//
//  User.swift
//  AppleCard
//
//  Created by mohamed  habib on 29/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class User {
    
    var name: String
    var ssn: String
    var dob: Date
    
    init(name: String, ssn: String, dob: Date) {
        self.name = name
        self.ssn = ssn
        self.dob = dob
    }
}

extension User{
    var isElligible: Bool {
        let component = Calendar.current.dateComponents([.year], from: dob, to: Date())
        if let year = component.year {
            return year >= 18
        }
        return false
    }
}

