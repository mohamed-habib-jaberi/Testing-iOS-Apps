//
//  TestingAsyncUsingExpectationsTests.swift
//  TestingAsyncUsingExpectationsTests
//
//  Created by eidd5180 on 13/07/2022.
//

import XCTest
@testable import TestingAsyncUsingExpectations

class TestingAsyncUsingExpectationsTests: XCTestCase {
    func test_GetAllPosts() {

        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

        URLSession.shared.dataTask(with: url) { data, response, error in

            guard let data = data, error == nil else {
                XCTFail()
                return
            }

            let posts =  try! JSONDecoder().decode([Post].self, from: data)
            XCTAssertTrue(posts.count > 0)

        }.resume()

        // NO ASSERT

    }

}
