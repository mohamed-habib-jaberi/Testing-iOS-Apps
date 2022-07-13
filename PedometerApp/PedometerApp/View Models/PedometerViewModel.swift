//
//  PedometerViewModel.swift
//  PedometerApp
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation

class PedometerViewModel {

    var pedometer: Pedometer

    init(pedometer: Pedometer) {
        self.pedometer = pedometer
    }

    func startPedometer() {
        self.pedometer.start()
    }

}
