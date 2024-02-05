//
//  UsdNumberViewController.swift
//  my real project 1
//
//  Created by Nurtilek on 2/5/24.
//

import UIKit

class UsdNumberViewController: UIViewController {

    private lazy var myCArdLabel: UILabel = MakerView().makeLbl(text: "Transfer to visa card",
                                                                textColor: .black,
                                                                textSize: 17,
                                                                ofSize: .medium)
    
    private lazy var myMoneyView: UIView = MakerView().makeUIView(layerCorneradius: 16,
                                                                  backgroundColor: .white)
    
    private lazy var myImage1: UIImageView = MakerView().makeImage(image: "icon-wallet")
    
    private lazy var myNumberLabel: UILabel = MakerView().makeLbl(text: "996*****",
                                                                  textColor: .black,
                                                                  textSize: 13,
                                                                  ofSize: .medium)
    
    private lazy var myMonyLabel: UILabel = MakerView().makeLbl(text: "Балансе: 100000",
                                                                textColor: .black,
                                                                textSize: 16,
                                                                ofSize: .medium)
    
    private lazy var myNumCardView: UIView = MakerView().makeUIView(layerCorneradius: 16,
                                                                    backgroundColor: .white)
    
    private lazy var myButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        if let image = UIImage(systemName: "creditcard")?.withRenderingMode(.alwaysTemplate) {
            configuration.image = image
        }
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myNumCardTF: UITextField = MakerView().makeTF(placeholder: "996 enter a number",
                                                                   borderColor: UIColor.white.cgColor,
                                                                   backgroundColor: .white)
    
    private lazy var myWellView: UIView = MakerView().makeUIView(layerCorneradius: 10,
                                                                 backgroundColor: .systemGray3)
    
    private lazy var myKgzBt: UIButton = MakerView().makeBTN(title: "Kgz",
                                                             for: .normal,
                                                             colorBT: .black,
                                                             backgroundColorBT: .systemGray3,
                                                             layerCornerBT: 10)
    
    private lazy var myUSDBt: UIButton = MakerView().makeBTN(title: "Usd",
                                                             for: .normal,
                                                             colorBT: .black,
                                                             backgroundColorBT: .white,
                                                             layerCornerBT: 10)
    
    private lazy var myEURBt: UIButton = MakerView().makeBTN(title: "Eur",
                                                             for: .normal,
                                                             colorBT: .black,
                                                             backgroundColorBT: .systemGray3,
                                                             layerCornerBT: 10)
    
    private lazy var myRUBBt: UIButton = MakerView().makeBTN(title: "Rub",
                                                             for: .normal,
                                                             colorBT: .black,
                                                             backgroundColorBT: .systemGray3,
                                                             layerCornerBT: 10)
    
    private lazy var myViewCard: UIView = MakerView().makeUIView(layerCorneradius: 20,
                                                                 backgroundColor: .white)
    
    private lazy var myEnterMoneydTF: UITextField = MakerView().makeTF(placeholder: "0 $",
                                                                       borderColor: UIColor.white.cgColor,
                                                                       backgroundColor: .white)
    
    private lazy var comissionLabel: UILabel = MakerView().makeLbl(text: "Comission 0,00 $",
                                                                   textColor: .black,
                                                                   textSize: 13,
                                                                   ofSize: .medium)
    
    private lazy var TextView: UIView = MakerView().makeUIView(layerCorneradius: 20,
                                                               backgroundColor: .white)
    
    private lazy var myImageInText: UIImageView = MakerView().makeImage(image: "question2")
    
    private lazy var LabelInText: UILabel = MakerView().makeLbl(text: "If the card owner is incorrectly indicated, the issuing bank may refuse the transfer",
                                                                textColor: .black,
                                                                textSize: 13,
                                                                ofSize: .medium,
                                                                numberOfLines: 3)
    
    private lazy var myTransferBT: UIButton = {
        let but = UIButton(type: .system)
        but.setTitle("Translate", for: .normal)
        but.tintColor = .white
        but.backgroundColor = .systemGray2
        but.layer.cornerRadius = 16
        but.titleLabel?.textAlignment = .center
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonImage = UIImage(systemName: "chevron.left")
        let backButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(backButtonTapped))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem = backButton
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemTeal.cgColor, UIColor.white.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.5)
        view.layer.insertSublayer(gradientLayer, at: 0)
        setupUI()
    }
    
    private func setupUI() {
        upperPartScreen()
    }
    
    private func upperPartScreen() {
        view.addSubview(myCArdLabel)
        NSLayoutConstraint.activate([
            myCArdLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
            myCArdLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60)
        ])
        
        view.addSubview(myMoneyView)
        myMoneyView.addSubview(myImage1)
        myMoneyView.addSubview(myNumberLabel)
        myMoneyView.addSubview(myMonyLabel)
        
        NSLayoutConstraint.activate([
            myMoneyView.topAnchor.constraint(equalTo: myCArdLabel.bottomAnchor, constant: 25),
            myMoneyView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myMoneyView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myMoneyView.heightAnchor.constraint(equalToConstant: 70),
            
            myImage1.topAnchor.constraint(equalTo: myMoneyView.topAnchor, constant: 15),
            myImage1.leadingAnchor.constraint(equalTo: myMoneyView.leadingAnchor, constant: 16),
            myImage1.heightAnchor.constraint(equalToConstant: 35),
            myImage1.widthAnchor.constraint(equalToConstant: 35),
            
            myNumberLabel.topAnchor.constraint(equalTo: myMoneyView.topAnchor, constant: 15),
            myNumberLabel.leadingAnchor.constraint(equalTo: myImage1.leadingAnchor, constant: 40),
            
            myMonyLabel.topAnchor.constraint(equalTo: myNumberLabel.bottomAnchor, constant: -2),
            myMonyLabel.leadingAnchor.constraint(equalTo: myImage1.leadingAnchor, constant: 40)
        ])
        
        view.addSubview(myNumCardView)
        myNumCardView.addSubview(myButton)
        myNumCardView.addSubview(myNumCardTF)
        NSLayoutConstraint.activate([
            myNumCardView.topAnchor.constraint(equalTo: myMoneyView.bottomAnchor, constant: 20),
            myNumCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myNumCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myNumCardView.heightAnchor.constraint(equalToConstant: 50),
            
            myButton.topAnchor.constraint(equalTo: myNumCardView.topAnchor, constant: 15),
            myButton.leadingAnchor.constraint(equalTo: myNumCardView.leadingAnchor, constant: 16),
            myButton.heightAnchor.constraint(equalToConstant: 20),
            myButton.widthAnchor.constraint(equalToConstant: 20),
            
            myNumCardTF.topAnchor.constraint(equalTo: myNumCardView.topAnchor, constant: 5),
            myNumCardTF.leadingAnchor.constraint(equalTo: myButton.leadingAnchor, constant: 25),
            myNumCardTF.trailingAnchor.constraint(equalTo: myNumCardView.trailingAnchor, constant: -20),
            myNumCardTF.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        view.addSubview(myWellView)
        myWellView.addSubview(myKgzBt)
        myWellView.addSubview(myUSDBt)
        myWellView.addSubview(myEURBt)
        myWellView.addSubview(myRUBBt)
        NSLayoutConstraint.activate([
            myWellView.topAnchor.constraint(equalTo: myNumCardView.bottomAnchor, constant: 15),
            myWellView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            myWellView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45),
            myWellView.heightAnchor.constraint(equalToConstant: 30),
            
            myKgzBt.topAnchor.constraint(equalTo: myWellView.topAnchor, constant: 2),
            myKgzBt.leadingAnchor.constraint(equalTo: myWellView.leadingAnchor, constant: 5),
            myKgzBt.heightAnchor.constraint(equalToConstant: 25),
            myKgzBt.widthAnchor.constraint(equalToConstant: 65),
            
            myUSDBt.topAnchor.constraint(equalTo: myWellView.topAnchor, constant: 2),
            myUSDBt.leadingAnchor.constraint(equalTo: myKgzBt.leadingAnchor, constant: 75),
            myUSDBt.heightAnchor.constraint(equalToConstant: 25),
            myUSDBt.widthAnchor.constraint(equalToConstant: 65),
            
            myEURBt.topAnchor.constraint(equalTo: myWellView.topAnchor, constant: 2),
            myEURBt.leadingAnchor.constraint(equalTo: myUSDBt.leadingAnchor, constant: 75),
            myEURBt.heightAnchor.constraint(equalToConstant: 25),
            myEURBt.widthAnchor.constraint(equalToConstant: 65),
            
            myRUBBt.topAnchor.constraint(equalTo: myWellView.topAnchor, constant: 2),
            myRUBBt.leadingAnchor.constraint(equalTo: myEURBt.leadingAnchor, constant: 80),
            myRUBBt.heightAnchor.constraint(equalToConstant: 25),
            myRUBBt.widthAnchor.constraint(equalToConstant: 65),
        ])
        
        myKgzBt.addTarget(self, action: #selector(KgzTapped), for: .touchUpInside)
        myEURBt.addTarget(self, action: #selector(EurTapped), for: .touchUpInside)
        myRUBBt.addTarget(self, action: #selector(RubTapped), for: .touchUpInside)
        
        view.addSubview(myViewCard)
        myViewCard.addSubview(myEnterMoneydTF)
        myViewCard.addSubview(comissionLabel)
        
        NSLayoutConstraint.activate([
            myViewCard.topAnchor.constraint(equalTo: myWellView.bottomAnchor, constant: 10),
            myViewCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myViewCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myViewCard.heightAnchor.constraint(equalToConstant: 90),
            
            myEnterMoneydTF.topAnchor.constraint(equalTo: myViewCard.topAnchor, constant: 20),
            myEnterMoneydTF.leadingAnchor.constraint(equalTo: myViewCard.leadingAnchor, constant: 150),
            myEnterMoneydTF.widthAnchor.constraint(equalToConstant: 100),
            myEnterMoneydTF.heightAnchor.constraint(equalToConstant: 50),
            
            comissionLabel.topAnchor.constraint(equalTo: myEnterMoneydTF.bottomAnchor, constant: -4),
            comissionLabel.centerXAnchor.constraint(equalTo: myViewCard.centerXAnchor)
        ])
        
        view.addSubview(TextView)
        TextView.addSubview(myImageInText)
        TextView.addSubview(LabelInText)
        NSLayoutConstraint.activate([
            TextView.topAnchor.constraint(equalTo: myViewCard.bottomAnchor, constant: 10),
            TextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            TextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            TextView.heightAnchor.constraint(equalToConstant: 100),
            
            myImageInText.topAnchor.constraint(equalTo: TextView.topAnchor, constant: 20),
            myImageInText.leadingAnchor.constraint(equalTo: TextView.leadingAnchor, constant: 20),
            myImageInText.heightAnchor.constraint(equalToConstant: 35),
            myImageInText.widthAnchor.constraint(equalToConstant: 35),
            
            LabelInText.topAnchor.constraint(equalTo: TextView.topAnchor, constant: 20),
            LabelInText.leadingAnchor.constraint(equalTo: myImageInText.leadingAnchor, constant: 45),
            LabelInText.widthAnchor.constraint(equalToConstant: 255)
        ])
        
        view.addSubview(myTransferBT)
        NSLayoutConstraint.activate([
            myTransferBT.topAnchor.constraint(equalTo: TextView.bottomAnchor, constant: 20),
            myTransferBT.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myTransferBT.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myTransferBT.heightAnchor.constraint(equalToConstant: 50)
        ])
        myTransferBT.addTarget(self, action: #selector(transferButton), for: .touchUpInside)
    }
    
    
    
    @objc func backButtonTapped() {
        for controller in navigationController?.viewControllers ?? [] {
            if let bankViewController = controller as? BankViewController {
                navigationController?.popToViewController(bankViewController, animated: true)
                break
            }
        }
    }
    
    @objc func KgzTapped(_ sender: UIButton) {
        let vc = MBankViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func EurTapped(_ sender: UIButton) {
        let vc = EurNUmberViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func RubTapped(_ sender: UIButton) {
        let vc = RubNumberViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func validateamout(_ sender: UIButton) {
        guard let amountText2 = myEnterMoneydTF.text,
              let moneyValue = Int(amountText2) else {
            myTransferBT.isEnabled = false
            myTransferBT.backgroundColor = .systemGray3
            return
        }
        
        let isMoneyValid = amountText2.count >= 2
        
        if isMoneyValid {
            if moneyValue <= BankViewController.balance {
                myTransferBT.isEnabled = true
                myTransferBT.backgroundColor = .systemBlue
            } else {
                myTransferBT.isEnabled = false
                myTransferBT.backgroundColor = .systemGray3
            }
        } else {
            myTransferBT.isEnabled = false
            myTransferBT.backgroundColor = .systemGray3
        }
    }

    @objc func transferButton(_ sender: UIButton) {
        guard myTransferBT.isEnabled else {
            
            return
        }
        
        let vc = lastViewController()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func transQiwi(_ sender: UIButton) {
        
        guard let amountText = myEnterMoneydTF.text,
              let moneyValue = Int(amountText) else {
            myTransferBT.isEnabled = false
            myTransferBT.backgroundColor = .systemGray3
            return
        }
        
        let isMoneyValid = amountText.count >= 2
        let isCardNumberValid = isValidCardNumber(myNumCardTF.text)
        
        if isMoneyValid && isCardNumberValid && moneyValue <= BankViewController.balance {
            myTransferBT.isEnabled = true
            myTransferBT.backgroundColor = .systemBlue
            
            let vc = lastViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            myTransferBT.isEnabled = false
            myTransferBT.backgroundColor = .systemGray3
        }
    }
    
    func isValidCardNumber(_ cardNumber: String?) -> Bool {
        guard let cardNumber = cardNumber else {
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

