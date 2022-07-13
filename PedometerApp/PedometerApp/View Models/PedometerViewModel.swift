//
//  PedometerViewModel.swift
//  PedometerApp
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation
import CoreMotion

enum AppState {
    case notStarted
    case inProgress
    case notAuthorized
}

class PedometerViewModel {

    var steps: Int = 0
    var distanceTravelled: Double = 0.0

    var pedometer: Pedometer
    var appState: AppState = .notStarted

    init(pedometer: Pedometer) {
        self.pedometer = pedometer
    }


    func startPedometer() {

        guard self.pedometer.pedometerAvailable else {
            self.appState = .notStarted
            return
        }

        guard !self.pedometer.permissionDeclined else {
            self.appState = .notStarted
            return
        }

        self.appState = .inProgress

        self.pedometer.start(dataUpdates: { (data, error) in
            //
            if let data = data {
                self.steps = data.steps
                self.distanceTravelled = data.distanceTravelled
            }
        }, eventUpdates: { error in
            if let error = error {
                let nsError = error as NSError
                if nsError.domain == CMErrorDomain && nsError.code == CMErrorMotionActivityNotAuthorized.rawValue {
                    self.appState = .notAuthorized
                }
            }
        })

        /*
        self.pedometer.start { (error) in
            if let error = error {
                let nsError = error as NSError
                if nsError.domain == CMErrorDomain && nsError.code == CMErrorMotionActivityNotAuthorized.rawValue {
                    self.appState = .notAuthorized
                }
            }
        } */


    }

}
