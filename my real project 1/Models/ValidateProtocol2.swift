//
//  ValidateProtocol2.swift
//  my real project 1
//
//  Created by Nurtilek on 2/5/24.
//

import UIKit

protocol ValidateProtocol2 {
    
    func validateText2(_ amount: String?) -> Bool
    
    func numberTranslate1(cardNumber: String?, enteredMoney: String?, transferButton: UIButton)
    
    func numberTranslate2(amountText: String?, cardNumber: String?, transferButton: UIButton, navigationController: UINavigationController?)
    
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
    
    func numberTranslate1(cardNumber: String?, enteredMoney: String?, transferButton: UIButton) {
        let isCardNumberValid = self.validateText2(cardNumber)
        let isMoneyValid = enteredMoney?.count ?? 0 >= 2
        let isEnabled = isCardNumberValid && isMoneyValid
        
        transferButton.isEnabled = isEnabled
        transferButton.backgroundColor = isEnabled ? .systemBlue : .systemGray3
    }
    
    func numberTranslate2(amountText: String?, cardNumber: String?, transferButton: UIButton, navigationController: UINavigationController?) {
        guard let amountText = amountText,
              let moneyValue = Int(amountText),
              amountText.count >= 2 else {
            transferButton.isEnabled = true
            transferButton.backgroundColor = .systemBlue
            return
        }
        
        let isCardNumberValid = self.validateText2(cardNumber)
        
        if isCardNumberValid && moneyValue <= BankViewController.balance {
            transferButton.isEnabled = true
            transferButton.backgroundColor = .systemBlue
            
            let vc = lastViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            transferButton.isEnabled = false
            transferButton.backgroundColor = .systemGray3
        }
    }
}


