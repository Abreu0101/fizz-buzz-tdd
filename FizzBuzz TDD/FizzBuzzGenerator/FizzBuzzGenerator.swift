//
//  FizzBuzzGenerator.swift
//  FizzBuzz TDD
//
//  Created by Roberto Abreu on 9/7/20.
//  Copyright © 2020 Roberto Abreu. All rights reserved.
//

import Foundation

public struct FizzBuzzGenerator {
    
    public init() {}
    
    public func generateOutput(for number: Int) -> String {
        if number % 3 == 0 && number % 5 == 0 {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        }
        return "\(number)"
    }
    
}
