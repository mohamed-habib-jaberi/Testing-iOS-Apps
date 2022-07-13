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
        self.pedometer.start { (error) in
            if let error = error {
                let nsError = error as NSError
                if nsError.domain == CMErrorDomain && nsError.code == CMErrorMotionActivityNotAuthorized.rawValue {
                    self.appState = .notAuthorized
                }
            }
        }
    }

}
