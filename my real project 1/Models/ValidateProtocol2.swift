//
//  ValidateProtocol2.swift
//  my real project 1
//
//  Created by Nurtilek on 2/5/24.
//

import UIKit

protocol ValidateProtocol2 {
    
    func validateText2(_ amount: String?) -> Bool
    
}

extension ValidateProtocol2 {
    
    func validateText2(_ amount: String?) -> Bool {
        guard let cardNumber = amount else {
            return false         }
        let strippedCardNumber = cardNumber.replacingOccurrences(of: " ", with: "")
        
        guard strippedCardNumber.count == 12 else {
            return false
        }
        
        guard strippedCardNumber.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil else {
            return false
        }
        
        return true
    }
}


