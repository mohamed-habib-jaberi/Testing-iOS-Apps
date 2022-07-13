//
//  TestingAsyncUsingExpectationsTests.swift
//  TestingAsyncUsingExpectationsTests
//
//  Created by eidd5180 on 13/07/2022.
//

import XCTest
@testable import TestingAsyncUsingExpectations

class TestingAsyncUsingExpectationsTests: XCTestCase {

    // Wrong test
//    func test_GetAllPosts() {
//
//        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//
//            guard let data = data, error == nil else {
//                XCTFail()
//                return
//            }
//
//            let posts =  try! JSONDecoder().decode([Post].self, from: data)
//            XCTAssertTrue(posts.count > 0)
//
//        }.resume()
//
//        // NO ASSERT
//
//    }

    // right test

    func test_GetAllPosts() {

        let expectation = XCTestExpectation(description: "Posts has been downloaded!")
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

        var posts = [Post]()

        URLSession.shared.dataTask(with: url) { data, response, error in

            guard let data = data, error == nil else {
                XCTFail()
                return
            }

            posts =  try! JSONDecoder().decode([Post].self, from: data)
            expectation.fulfill()

        }.resume()

        wait(for: [expectation], timeout: 2.0)
        XCTAssertTrue(posts.count > 0)
    }
}
