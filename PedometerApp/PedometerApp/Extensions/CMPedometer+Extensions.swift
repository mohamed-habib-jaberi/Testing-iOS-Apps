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

    func start() {

    }

}
