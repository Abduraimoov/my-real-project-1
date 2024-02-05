//
//  ValidateProtocol.swift
//  my real project 1
//
//  Created by Nurtilek on 2/5/24.
//

import UIKit

protocol ValidateProtocol {
    
    func validateText(amount: String) -> Bool
    
}

extension ValidateProtocol {
    
    func validateText(amount: String) -> Bool {
        return amount.count == 4
    }
}

