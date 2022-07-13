//
//  MockPedometer.swift
//  PedometerAppTests
//
//  Created by eidd5180 on 13/07/2022.
//

import Foundation
import CoreMotion
@testable import PedometerApp

class MockPedometer: Pedometer {

    var error: Error?
    var pedometerAvailable: Bool = true
    var permissionDeclined: Bool = false

    private (set) var started: Bool = false

    static let notAuthorizedError = NSError(domain: CMErrorDomain, code: Int(CMErrorMotionActivityNotAuthorized.rawValue), userInfo: nil)

    func start(completion: @escaping (Error?) -> Void) {
        self.started = true

        DispatchQueue.global(qos: .default).async {
            completion(self.error)
        }
    }

}
