//
//  RegisterViewController.swift
//  my real project 1
//
//  Created by Nurtilek on 2/2/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private lazy var myImage1: UIImageView = MakerView().makeImage(image: "image")
    
    private lazy var myRegisterView: UIView = MakerView().makeUIView(layerCorneradius: 16)

    private lazy var myStackVw3: UIStackView = MakerView().makerStack(axis: .horizontal,
                                                                      spacing: 5,
                                                                      alignment: .center,
                                                                      layerCorneradius: 20,
                                                                      backgroundColor: .systemMint)
    
    private lazy var ButtonLeadingInStactVW: UIButton = MakerView().makeBTN(title: "Email",
                                                                     for: .normal,
                                                                     colorBT: .white,
                                                                     backgroundColorBT: .systemMint,
                                                                     layerCornerBT: 16)
    
    private lazy var ButtonTraelingInStactVW: UIButton = MakerView().makeBTN(title: "Phone Number",
                                                                     for: .normal,
                                                                     colorBT: .black,
                                                                     backgroundColorBT: .systemYellow,
                                                                     layerCornerBT: 16)
    
    private lazy var myLabelView2: UILabel = MakerView().makeLbl(text: "Login With Phone Number",
                                                                 textColor: .black,
                                                                 textSize: 16,
                                                                 ofSize: .light)
                                                           
    private lazy var myNumberTF: UITextField = MakerView().makeTF(placeholder: "+996 Enter Number")
    
    private lazy var btGetOpt: UIButton = MakerView().makeBTN(title: "Get Opt",
                                                                     for: .normal,
                                                                     colorBT: .black,
                                                                     backgroundColorBT: .systemYellow,
                                                                     layerCornerBT: 16)
    
    private lazy var labelInRegisterVW: UILabel = MakerView().makeLbl(text: "Don’t have account ? Create Account",
                                                                 textColor: .black,
                                                                 textSize: 12,
                                                                 ofSize: .light)
    
    private lazy var myBottomImage1: UIImageView = MakerView().makeImage(image: "image1")
    
    private lazy var myBottomImage2: UIImageView = MakerView().makeImage(image: "image2")
    
    private lazy var myBottomImage3: UIImageView = MakerView().makeImage(image: "image3")
    
    
                                                                      
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        view.backgroundColor = .systemMint
        upperPartScreen()
    }
    
    private func upperPartScreen() {
        view.addSubview(myImage1)
        NSLayoutConstraint.activate([
            myImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 102),
            myImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 115),
            myImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -115),
            myImage1.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        view.addSubview(myRegisterView)
        NSLayoutConstraint.activate([
            myRegisterView.topAnchor.constraint(equalTo: view.topAnchor, constant: 282),
            myRegisterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            myRegisterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            myRegisterView.heightAnchor.constraint(equalToConstant: 371)
        ])
        
        myRegisterView.addSubview(myStackVw3)
        NSLayoutConstraint.activate([
            myStackVw3.topAnchor.constraint(equalTo: myRegisterView.topAnchor, constant: 24),
            myStackVw3.leadingAnchor.constraint(equalTo: myRegisterView.leadingAnchor, constant: 18),
            myStackVw3.trailingAnchor.constraint(equalTo: myRegisterView.trailingAnchor, constant: -18),
            myStackVw3.heightAnchor.constraint(equalToConstant: 50)
        ])
        myStackVw3.addArrangedSubview(ButtonLeadingInStactVW)
        myStackVw3.addArrangedSubview(ButtonTraelingInStactVW)
        NSLayoutConstraint.activate([
            ButtonLeadingInStactVW.widthAnchor.constraint(equalToConstant: 130),
            ButtonLeadingInStactVW.heightAnchor.constraint(equalToConstant: 35),
            ButtonLeadingInStactVW.leadingAnchor.constraint(equalTo: myStackVw3.leadingAnchor, constant: 5),
            ButtonTraelingInStactVW.widthAnchor.constraint(equalToConstant: 130),
            ButtonTraelingInStactVW.trailingAnchor.constraint(equalTo: myStackVw3.trailingAnchor, constant: -5),
            ButtonTraelingInStactVW.heightAnchor.constraint(equalToConstant: 35)
        ])
        ButtonLeadingInStactVW.addTarget(self, action: #selector(emailTapped), for: .touchUpInside)
        myRegisterView.addSubview(myLabelView2)
        NSLayoutConstraint.activate([
            myLabelView2.topAnchor.constraint(equalTo: myStackVw3.bottomAnchor, constant: 27),
            myLabelView2.leadingAnchor.constraint(equalTo: myRegisterView.leadingAnchor, constant: 18),
            myLabelView2.trailingAnchor.constraint(equalTo: myRegisterView.trailingAnchor, constant: -132),
        ])
        myRegisterView.addSubview(myNumberTF)
        
        NSLayoutConstraint.activate([
            myNumberTF.topAnchor.constraint(equalTo: myLabelView2.bottomAnchor, constant: 19),
            myNumberTF.leadingAnchor.constraint(equalTo: myRegisterView.leadingAnchor, constant: 18),
            myNumberTF.trailingAnchor.constraint(equalTo: myRegisterView.trailingAnchor, constant: -16),
            myNumberTF.heightAnchor.constraint(equalToConstant: 40)
        ])
        myRegisterView.addSubview(btGetOpt)
        NSLayoutConstraint.activate([
            btGetOpt.topAnchor.constraint(equalTo: myNumberTF.bottomAnchor, constant: 35),
            btGetOpt.leadingAnchor.constraint(equalTo: myRegisterView.leadingAnchor, constant: 20),
            btGetOpt.trailingAnchor.constraint(equalTo: myRegisterView.trailingAnchor, constant: -20),
            btGetOpt.heightAnchor.constraint(equalToConstant: 45)
        ])
        btGetOpt.addTarget(self, action: #selector(secondView), for: .touchUpInside)
        
        myRegisterView.addSubview(labelInRegisterVW)
        NSLayoutConstraint.activate([
            labelInRegisterVW.topAnchor.constraint(equalTo: btGetOpt.bottomAnchor, constant: 35),
            labelInRegisterVW.leadingAnchor.constraint(equalTo: myRegisterView.leadingAnchor, constant: 43),
            labelInRegisterVW.trailingAnchor.constraint(equalTo: myRegisterView.trailingAnchor, constant: -43)
        ])
        
        myRegisterView.addSubview(myBottomImage1)
        NSLayoutConstraint.activate([
            myBottomImage1.topAnchor.constraint(equalTo: myRegisterView.bottomAnchor, constant: 140),
            myBottomImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            myBottomImage1.heightAnchor.constraint(equalToConstant: 20),
            myBottomImage1.widthAnchor.constraint(equalToConstant: 54)
        ])
        
        myRegisterView.addSubview(myBottomImage2)
        NSLayoutConstraint.activate([
            myBottomImage2.topAnchor.constraint(equalTo: myRegisterView.bottomAnchor, constant: 140),
            myBottomImage2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            myBottomImage2.heightAnchor.constraint(equalToConstant: 20),
            myBottomImage2.widthAnchor.constraint(equalToConstant: 57)
        ])
        myRegisterView.addSubview(myBottomImage3)
        NSLayoutConstraint.activate([
            myBottomImage3.topAnchor.constraint(equalTo: myRegisterView.bottomAnchor, constant: 140),
            myBottomImage3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            myBottomImage3.heightAnchor.constraint(equalToConstant: 20),
            myBottomImage3.widthAnchor.constraint(equalToConstant: 67)
        ])
    }
    
    private func phoneNumberKGZ() -> Bool {
        let countryCode = "+996"
        let phoneNumber = myNumberTF.text ?? ""
        return phoneNumber.hasPrefix(countryCode) && phoneNumber.count == (countryCode.count + 9)
    }
    
    @objc func secondView( sender: UIButton) {
        if phoneNumberKGZ() {
            myNumberTF.layer.borderWidth = 0
            let vc = BankViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            myNumberTF.placeholder = "Введите номер с кодом страны +996"
            myNumberTF.layer.borderColor = UIColor.red.cgColor
            myNumberTF.layer.borderWidth = 2
        }
    }
    
    @objc func emailTapped(_ sender: UIButton) {
        let vc = EmailViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
 

}
