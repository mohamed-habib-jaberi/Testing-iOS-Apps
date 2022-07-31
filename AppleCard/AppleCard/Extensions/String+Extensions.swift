//
//  String+Extensions.swift
//  AppleCard
//
//  Created by mohamed  habib on 29/07/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

extension String {
    
    func toDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.date(from: self)
    }
}
