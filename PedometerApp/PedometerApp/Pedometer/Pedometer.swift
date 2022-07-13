//
//  Pedometer.swift
//  PedometerApp
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation

protocol Pedometer {
    var pedometerAvailable: Bool { get }
    var permissionDeclined: Bool { get }
    //func start(completion: @escaping (Error?) -> Void)
    func start(dataUpdates: @escaping (PedometerData?, Error?) -> Void, eventUpdates: @escaping (Error?) -> Void)
}

protocol PedometerData {
    var steps: Int { get }
    var distanceTravelled: Double { get }
}
