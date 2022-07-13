//
//  MockPedometer.swift
//  PedometerAppTests
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation
@testable import PedometerApp

class MockPedometer: Pedometer {

    private (set) var started: Bool = false

    func start() {
        self.started = true
    }

}
