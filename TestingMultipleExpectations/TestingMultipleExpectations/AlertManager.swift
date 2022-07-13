//
//  AlertManager.swift
//  TestingMultipleExpectations
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation

class AlertManager {

    func postAlert() {
        NotificationCenter.default.post(name: Notification.Name.alertNotification, object: self)
    }
}

