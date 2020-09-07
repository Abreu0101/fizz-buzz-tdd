//
//  FizzBuzzGeneratorTests.swift
//  FizzBuzz TDDTests
//
//  Created by Roberto Abreu on 9/7/20.
//  Copyright © 2020 Roberto Abreu. All rights reserved.
//

import XCTest

struct FizzBuzzGenerator {
    
    func generateOutput(for number: Int) -> String {
        return "Fizz"
    }
    
}

class FizzBuzzGeneratorTests: XCTestCase {

    func test_generateOutput_returnsFizzOnNumberDivisibleBy3() {
        let sut = FizzBuzzGenerator()
        
        let receivedOutput = sut.generateOutput(for: 3)
        
        XCTAssertEqual(receivedOutput, "Fizz")
    }

}
