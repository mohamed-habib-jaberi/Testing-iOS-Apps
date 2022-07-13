//
//  CMPedometer+Extensions.swift
//  PedometerApp
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation
import CoreMotion

extension CMPedometer: Pedometer {

    var pedometerAvailable: Bool {
        return CMPedometer.isStepCountingAvailable() && CMPedometer.isDistanceAvailable()
        && CMPedometer.authorizationStatus() != .restricted
    }

    var permissionDeclined: Bool {
        return CMPedometer.authorizationStatus() == .denied
    }

    func start(completion: @escaping (Error?) -> Void) {
        self.startEventUpdates { (event, error) in
            completion(error)
        }
    }

}
