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
        if number % 3 == 0 && number % 5 == 0 {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        }
        return "Buzz"
    }
    
}

class FizzBuzzGeneratorTests: XCTestCase {

    func test_generateOutput_returnsFizzOnNumberDivisibleBy3() {
        expect(makeSUT(), for: 3, toGenerateOutput: "Fizz")
    }
    
    func test_generateOutput_returnsBuzzOnNumberDivisbleBy5() {
        expect(makeSUT(), for: 5, toGenerateOutput: "Buzz")
    }
    
    func test_generateOutput_returnsFizzBuzzOnNumberDivisibleBy3And5() {
        expect(makeSUT(), for: 15, toGenerateOutput: "FizzBuzz")
    }
    
    // MARK: - Helpers
    
    private func makeSUT() -> FizzBuzzGenerator {
        return FizzBuzzGenerator()
    }

    private func expect(_ sut: FizzBuzzGenerator, for number: Int, toGenerateOutput expectedOutput: String) {
        let receivedOutput = sut.generateOutput(for: number)
        XCTAssertEqual(receivedOutput, expectedOutput)
    }
    
}
