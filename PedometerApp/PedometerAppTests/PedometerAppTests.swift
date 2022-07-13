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

    func test_PedometerAuthorized_ShouldBeInProgress() {

        let mockPedometer = MockPedometer()
        mockPedometer.permissionDeclined = false

        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)

        pedometerVM.startPedometer()

        XCTAssertEqual(pedometerVM.appState, .inProgress)

    }

    func test_PedometerNotAuthorized_DoesNotStart() {

        let mockPedometer = MockPedometer()
        mockPedometer.permissionDeclined = true

        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)

        pedometerVM.startPedometer()

        XCTAssertEqual(pedometerVM.appState, .notStarted)

    }

    func test_PedometerNotAvailable_DoesNotStart() {

        let mockPedometer = MockPedometer()
        mockPedometer.pedometerAvailable = false

        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)

        pedometerVM.startPedometer()

        XCTAssertEqual(pedometerVM.appState, .notStarted)

    }

    func test_WhenAuthDeniedAfterStartGenerateError() {

        let mockPedometer = MockPedometer()
        mockPedometer.error = MockPedometer.notAuthorizedError

        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)

        let exp = expectation(for: NSPredicate(block: { (thing, _) -> Bool in
            let vm = thing as! PedometerViewModel
            return vm.appState == .notAuthorized

        }), evaluatedWith: pedometerVM, handler: nil)

        pedometerVM.startPedometer()

        wait(for: [exp], timeout: 2.0)

    }

    func test_WhenPedometerUpdatesThenUpdatesViewModel() {

        let data = MockData(steps: 100, distanceTravelled: 10)

        let mockPedometer = MockPedometer()
        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)

        pedometerVM.startPedometer()
        mockPedometer.sendData(data)

        XCTAssertEqual(100, pedometerVM.steps)
        XCTAssertEqual(10, pedometerVM.distanceTravelled)

    }
}

