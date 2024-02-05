//
//  ValidateProtocol2.swift
//  my real project 1
//
//  Created by Nurtilek on 2/5/24.
//

import UIKit

protocol ValidateProtocol2 {
    
    func validateText(amount: String) -> Bool
    
}

extension ValidateProtocol2 {
    
    func validateText2(amount: String) -> Bool {
        return amount.count == 12
    }
}


