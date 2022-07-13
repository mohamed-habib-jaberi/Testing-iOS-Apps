//
//  PedometerViewModel.swift
//  PedometerApp
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation

enum AppState {
    case notStarted
    case inProgress
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
        self.pedometer.start()
    }

}
