//
//  CurrencyFormatterTests.swift
//  BankerUnitTests
//
//  Created by Daniel  Alves Barreto on 06/12/22.
//

import Foundation

import XCTest

@testable import Banker

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(110110.01)
        XCTAssertEqual(result.0, "110,110")
        XCTAssertEqual(result.1, " 1")
    }
}
