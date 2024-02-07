//
//  MainViewController.swift
//  my real project 1
//
//  Created by Nurtilek on 1/28/24.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var myImage1: UIImageView = MakerView.shared.makeImage(image: "image")
    
    private lazy var myBtSkip: UIButton = MakerView.shared.makeBTN(title: "Skip",
                                                                   colorBT: .systemOrange)
    
    private lazy var myImage2: UIImageView = MakerView.shared.makeImage(image: "telephone")
    
    private lazy var myView2: UIView = MakerView.shared.makeUIView(layerCorneradius: 16)
    
    private lazy var myImageInView: UIImageView = MakerView.shared.makeImage(image: "imageinview")
    
    private lazy var myLabelView2: UILabel = MakerView.shared.makeLbl(text: "Achieve your goals",
                                                                      textColor: .black,
                                                                      textSize: 10,
                                                                      ofSize: .bold)
    
    private lazy var myImagelll: UIImageView = MakerView.shared.makeImage(image: "llllllll")
    
    private lazy var myView3: UIView = MakerView.shared.makeUIView(layerCorneradius: 12)
    
    private lazy var myLblInVw3: UILabel = MakerView.shared.makeLbl(text: "Points",
                                                                    textColor: .black,
                                                                    textSize: 10,
                                                                    ofSize: .medium)
    
    private lazy var myStackVw3: UIStackView = MakerView.shared.makerStack(axis: .horizontal,
                                                                           spacing: 10,
                                                                           alignment: .center,
                                                                           layerCorneradius: 11,
                                                                           backgroundColor: .systemYellow)
    
    private lazy var myImagevw3: UIImageView = MakerView.shared.makeImage(image: "award_star")
    
    private lazy var mylblVw3: UILabel = MakerView().makeLbl(text: "1.972 Points",
                                                             textColor: .black,
                                                             textSize: 10,
                                                             ofSize: .medium)
    
    private lazy var myBottomView: UIView = MakerView.shared.makeUIView(backgroundColor: .systemMint)
    
    private lazy var myBankLbl: UILabel = MakerView.shared.makeLbl(text: "Bank Bibi the safest         and most trusted",
                                                                   textColor: .black,
                                                                   textSize: 24,
                                                                   ofSize: .bold,
                                                                   numberOfLines: 2)
    
    private lazy var myBankText: UILabel = MakerView.shared.makeLbl(text: "Your finance work starts here. Our here to help you track and deal with speeding up your transactions.",
                                                                    textColor: .black,
                                                                    textSize: 11,
                                                                    ofSize: .light)
    
    private lazy var myBottomStack: UIStackView = MakerView.shared.makerStack(axis: .horizontal,
                                                                              spacing: -1,
                                                                              alignment: .center, backgroundColor: .systemMint)
    
    private lazy var myLeadingLine: UILabel = MakerView.shared.makeLbl(text: "___",
                                                                       textColor: .black,
                                                                       textSize: 27,
                                                                       ofSize: .bold)
    
    private lazy var myTrealingLine: UILabel = MakerView.shared.makeLbl(text: ".",
                                                                        textColor: .white,
                                                                        textSize: 45,
                                                                        ofSize: .bold)
    
    private lazy var myBottomButton: UIButton = MakerView.shared.makeBTN(title: "Get Started",
                                                                         for: .normal,
                                                                         colorBT: .black,
                                                                         backgroundColorBT: .white,
                                                                         layerCornerBT: 25)
    
    private lazy var myBottomImage1: UIImageView = MakerView.shared.makeImage(image: "image1")
    
    private lazy var myBottomImage2: UIImageView = MakerView.shared.makeImage(image: "image2")
    
    private lazy var myBottomImage3: UIImageView = MakerView.shared.makeImage(image: "image3")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemMint
        upperPartScreen()
        bottomOfScreen()
    }
    
    private func upperPartScreen() {
        view.addSubview(myImage1)
        NSLayoutConstraint.activate([
            myImage1.topAnchor.constraint(equalTo: view.topAnchor,  constant: 55),
            myImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            myImage1.heightAnchor.constraint(equalToConstant: 37),
            myImage1.widthAnchor.constraint(equalToConstant: 47)
        ])
        
        view.addSubview(myBtSkip)
        NSLayoutConstraint.activate([
            myBtSkip.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            myBtSkip.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            myBtSkip.heightAnchor.constraint(equalToConstant: 37),
            myBtSkip.widthAnchor.constraint(equalToConstant: 37)
        ])
        
        view.addSubview(myImage2)
        NSLayoutConstraint.activate([
            myImage2.topAnchor.constraint(equalTo: view.topAnchor, constant: 165),
            myImage2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 86),
            myImage2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -86),
            myImage2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -215)
        ])
        
        view.addSubview(myView2)
        NSLayoutConstraint.activate([
            myView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 307),
            myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37),
            myView2.heightAnchor.constraint(equalToConstant: 110),
            myView2.widthAnchor.constraint(equalToConstant: 170)
        ])
        
        myView2.addSubview(myImageInView)
        NSLayoutConstraint.activate([
            myImageInView.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 22),
            myImageInView.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 24),
            myImageInView.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -24),
            myImageInView.bottomAnchor.constraint(equalTo: myView2.bottomAnchor, constant: -5)
        ])
        
        myView2.addSubview(myLabelView2)
        NSLayoutConstraint.activate([
            myLabelView2.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 2),
            myLabelView2.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 12),
        ])
        
        view.addSubview(myImagelll)
        NSLayoutConstraint.activate([
            myImagelll.topAnchor.constraint(equalTo: view.topAnchor, constant: 205),
            myImagelll.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 74),
            myImagelll.heightAnchor.constraint(equalToConstant: 45),
            myImagelll.widthAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    private func bottomOfScreen() {
        view.addSubview(myBottomView)
        NSLayoutConstraint.activate([
            myBottomView.topAnchor.constraint(equalTo: view.topAnchor, constant: 406),
            myBottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            myBottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            myBottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        myBottomView.addSubview(myView3)
        NSLayoutConstraint.activate([
            myView3.topAnchor.constraint(equalTo: view.topAnchor, constant: 384),
            myView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46),
            myView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -176),
            myView3.heightAnchor.constraint(equalToConstant: 58)
        ])
        
        myView3.addSubview(myLblInVw3)
        NSLayoutConstraint.activate([
            myLblInVw3.topAnchor.constraint(equalTo: myView3.topAnchor, constant: 6),
            myLblInVw3.leadingAnchor.constraint(equalTo: myView3.leadingAnchor, constant: 10)
        ])
        
        myView3.addSubview(myStackVw3)
        NSLayoutConstraint.activate([
            myStackVw3.topAnchor.constraint(equalTo: myView3.topAnchor, constant: 22),
            myStackVw3.leadingAnchor.constraint(equalTo: myView3.leadingAnchor, constant: 16),
            myStackVw3.trailingAnchor.constraint(equalTo: myView3.trailingAnchor, constant: -27),
            myStackVw3.bottomAnchor.constraint(equalTo: myView3.bottomAnchor, constant: -12)
        ])
        
        myStackVw3.addArrangedSubview(myImagevw3)
        NSLayoutConstraint.activate([
            myImagevw3.leadingAnchor.constraint(equalTo: myStackVw3.leadingAnchor, constant: 9)
        ])
        myStackVw3.addArrangedSubview(mylblVw3)
        
        myBottomView.addSubview(myBankLbl)
        NSLayoutConstraint.activate([
            myBankLbl.topAnchor.constraint(equalTo: myBottomView.topAnchor, constant: 75),
            myBankLbl.leadingAnchor.constraint(equalTo: myBottomView.leadingAnchor, constant: 70),
            myBankLbl.trailingAnchor.constraint(equalTo: myBottomView.trailingAnchor, constant: -70),
            myBankLbl.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        myBottomView.addSubview(myBankText)
        NSLayoutConstraint.activate([
            myBankText.topAnchor.constraint(equalTo: myBankLbl.bottomAnchor, constant: 5),
            myBankText.leadingAnchor.constraint(equalTo: myBottomView.leadingAnchor, constant: 60),
            myBankText.trailingAnchor.constraint(equalTo: myBottomView.trailingAnchor, constant: -60),
            myBankText.heightAnchor.constraint(equalToConstant: 34),
        ])
        
        myBottomView.addSubview(myBottomStack)
        NSLayoutConstraint.activate([
            myBottomStack.topAnchor.constraint(equalTo: myBankText.bottomAnchor, constant: 45),
            myBottomStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 170),
            myBottomStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -128),
            myBottomStack.heightAnchor.constraint(equalToConstant: 40)
        ])
        myBottomStack.addArrangedSubview(myLeadingLine)
        myBottomStack.addArrangedSubview(myTrealingLine)
        
        myBottomView.addSubview(myBottomButton)
        NSLayoutConstraint.activate([
            myBottomButton.topAnchor.constraint(equalTo: myBottomStack.bottomAnchor, constant: 35),
            myBottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            myBottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            myBottomButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        myBottomButton.addTarget(self, action: #selector(SecondMain), for: .touchUpInside)
        
        myBottomView.addSubview(myBottomImage1)
        NSLayoutConstraint.activate([
            myBottomImage1.topAnchor.constraint(equalTo: myBottomButton.bottomAnchor, constant: 35),
            myBottomImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 152),
            myBottomImage1.heightAnchor.constraint(equalToConstant: 20),
            myBottomImage1.widthAnchor.constraint(equalToConstant: 54)
        ])
        
        myBottomView.addSubview(myBottomImage2)
        NSLayoutConstraint.activate([
            myBottomImage2.topAnchor.constraint(equalTo: myBottomButton.bottomAnchor, constant: 35),
            myBottomImage2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            myBottomImage2.heightAnchor.constraint(equalToConstant: 20),
            myBottomImage2.widthAnchor.constraint(equalToConstant: 57)
        ])
        myBottomView.addSubview(myBottomImage3)
        NSLayoutConstraint.activate([
            myBottomImage3.topAnchor.constraint(equalTo: myBottomButton.bottomAnchor, constant: 35),
            myBottomImage3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            myBottomImage3.heightAnchor.constraint(equalToConstant: 20),
            myBottomImage3.widthAnchor.constraint(equalToConstant: 67)
        ])
    }
    
    @objc func SecondMain(_ sender: UIButton) {
        let vc = SecondMainViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}


