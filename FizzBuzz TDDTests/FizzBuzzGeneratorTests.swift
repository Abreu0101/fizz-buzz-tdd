//
//  FizzBuzzGeneratorTests.swift
//  FizzBuzz TDDTests
//
//  Created by Roberto Abreu on 9/7/20.
//  Copyright © 2020 Roberto Abreu. All rights reserved.
//

import XCTest
import FizzBuzz_TDD

class FizzBuzzGeneratorTests: XCTestCase {

    func test_generateOutput_returnsFizzOnNumberDivisibleBy3() {
        let samples = [3, 12, 18]
        samples.forEach { number in
            expect(makeSUT(), for: number, toGenerateOutput: "Fizz")
        }
    }
    
    func test_generateOutput_returnsBuzzOnNumberDivisbleBy5() {
        let samples = [5, 25, 50]
        samples.forEach { number in
            expect(makeSUT(), for: number, toGenerateOutput: "Buzz")
        }
    }
    
    func test_generateOutput_returnsFizzBuzzOnNumberDivisibleBy3And5() {
        let samples = [15, 30, 45]
        samples.forEach { number in
            expect(makeSUT(), for: number, toGenerateOutput: "FizzBuzz")
        }
    }
    
    func test_generateOutput_returnsNumberWhenNotDivisibleBy3Or5() {
        let samples = [4, 7, 16]
        samples.forEach { number in
            expect(makeSUT(), for: number, toGenerateOutput: "\(number)")
        }
    }
    
    // MARK: - Helpers
    
    private func makeSUT() -> FizzBuzzGenerator {
        return FizzBuzzGenerator()
    }

    private func expect(_ sut: FizzBuzzGenerator, for number: Int, toGenerateOutput expectedOutput: String, file: StaticString = #file, line: UInt = #line) {
        let receivedOutput = sut.generateOutput(for: number)
        XCTAssertEqual(receivedOutput, expectedOutput, "Expected \(expectedOutput), but got \(receivedOutput) instead", file: file, line: line)
    }
    
}
