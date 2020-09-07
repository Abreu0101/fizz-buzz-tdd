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
        if number % 3 == 0 {
            return "Fizz"
        }
        return "Buzz"
    }
    
}

class FizzBuzzGeneratorTests: XCTestCase {

    func test_generateOutput_returnsFizzOnNumberDivisibleBy3() {
        let sut = FizzBuzzGenerator()
        
        let receivedOutput = sut.generateOutput(for: 3)
        
        XCTAssertEqual(receivedOutput, "Fizz")
    }
    
    func test_generateOutput_returnsBuzzOnNumberDivisbleBy5() {
        let sut = FizzBuzzGenerator()
        
        let receivedOutput = sut.generateOutput(for: 5)
        
        XCTAssertEqual(receivedOutput, "Buzz")
    }

}
