//
//  PrimeCalculator.swift
//  Is It Prime
//
//  Created by Richard Garrod on 09/08/2015.
//  Copyright (c) 2015 RichardGarrod. All rights reserved.
//

import Foundation

class PrimeCalculator {
    
    var candidate: Double;
    
    init(potentialCandidate: Double) {
        self.candidate = potentialCandidate
    }
    
    func isPrime() -> Bool {
        
        if candidate == 1 {
            return false
        }
        
        if candidate == 2 {
            return true
        }
        
        if candidate % 2 == 0 {
            return false
        }
        
        return testPrimes()
    }
    
    func testPrimes() -> Bool {
        
        for(var i = 3.00; i < sqrt(candidate); i = i + 2)
        {
            if candidate % i == 0 {
                return false;
            }
        }
        
        return true;
    }
    
}