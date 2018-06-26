//
//  SpellCheckTests.swift
//  SpellCheckTests
//
//  Created by WANG Jie on 14/02/2018.
//  Copyright © 2018 jwang123. All rights reserved.
//

import XCTest
@testable import SpellCheckImpl

class SpellCheckTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMisspelled() {
        let sentence = "func hello worl method() -> completioin {"
        let ranges = sentence.misspelled
        XCTAssertEqual(ranges.count, 2)
    }

}
