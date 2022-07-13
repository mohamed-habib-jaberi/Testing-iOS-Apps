//
//  PedometerAppTests.swift
//  PedometerAppTests
//
//  Created by eidd5180 on 13/07/2022.
//

import XCTest
import CoreMotion
@testable import PedometerApp

class PedometerAppTests: XCTestCase {

    //    func test_CMPedometer_LoadingHistorialData() {
    //
    //        let now = Date()
    //        var data: CMPedometerData?
    //        let then = now.addingTimeInterval(-1000)
    //        let exp = expectation(description: "Pedometer query returns...")
    //
    //        let pedometer = CMPedometer()
    //        pedometer.queryPedometerData(from: now, to: then) { (pedometerData, error) in
    //
    //            data = pedometerData
    //            exp.fulfill()
    //        }
    //
    //        wait(for: [exp], timeout: 1.0)
    //        XCTAssertNotNil(data)
    //        if let steps = data?.numberOfSteps {
    //            XCTAssertTrue(steps.intValue > 0)
    //        }
    //
    //    }


    func test_StartsPedometer() {

        let mockPedometer = MockPedometer()
        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)

        pedometerVM.startPedometer()

        XCTAssertTrue(mockPedometer.started)

    }

}

