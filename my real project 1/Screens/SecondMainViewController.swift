//
//  SecondMainViewController.swift
//  my real project 1
//
//  Created by Nurtilek on 2/2/24.
//

import UIKit

class SecondMainViewController: UIViewController {
    
    private lazy var myBtSkip: UIButton = MakerView().makeBTN(title: "Skip",
                                                              colorBT: .systemOrange)
    
    private lazy var myImage2: UIImageView = MakerView().makeImage(image: "telephone2")
    
    private lazy var myView2: UIView = MakerView().makeUIView(layerCorneradius: 16)
    
    private lazy var myLabelView2: UILabel = MakerView().makeLbl(text: "This month",
                                                                 textColor: .black,
                                                                 textSize: 10,
                                                                 ofSize: .bold)
    
    private lazy var myLabel2View2: UILabel = {
        let lbl = UILabel()
        lbl.text = "$2,000.00"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 10, weight: .medium)
        lbl.backgroundColor = .systemGreen
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var myImageIbVw2: UIImageView = MakerView().makeImage(image: "vector")
    
    private lazy var myBottomView: UIView = MakerView().makeUIView(backgroundColor: .systemMint)
    
    private lazy var myView3: UIView = MakerView().makeUIView(layerCorneradius: 12)
    
    private lazy var myLabelView3: UILabel = MakerView().makeLbl(text: "Direct Deposit",
                                                                 textColor: .black,
                                                                 textSize: 10,
                                                                 ofSize: .bold)
    
    private lazy var myLabel2View3: UILabel = MakerView().makeLbl(text: "Sugested split",
                                                                  textColor: .black,
                                                                  textSize: 8,
                                                                  ofSize: .light)
    
    private lazy var myLabel3View3: UILabel = MakerView().makeLbl(text: "Today",
                                                                  textColor: .black,
                                                                  textSize: 10,
                                                                  ofSize: .bold)
    
    private lazy var myBankLbl: UILabel = MakerView().makeLbl(text: "Bank Bibi the safest         and most trusted",
                                                              textColor: .black,
                                                              textSize: 24,
                                                              ofSize: .bold,
                                                              numberOfLines: 2)
    
    private lazy var myBankText: UILabel = MakerView().makeLbl(text: "Your finance work starts here. Our here to help you track and deal with speeding up your transactions.",
                                                               textColor: .black,
                                                               textSize: 11,
                                                               ofSize: .light)
    
    private lazy var myLeadingLine: UILabel = MakerView().makeLbl(text: "___",
                                                                  textColor: .black,
                                                                  textSize: 27,
                                                                  ofSize: .bold)
    
    private lazy var myTrealingLine: UILabel = MakerView().makeLbl(text: ".",
                                                                   textColor: .white,
                                                                   textSize: 45,
                                                                   ofSize: .bold)
    
    private lazy var myBottomButton: UIButton = MakerView().makeBTN(title: "Get Started",
                                                                    for: .normal,
                                                                    colorBT: .black,
                                                                    backgroundColorBT: .white,
                                                                    layerCornerBT: 25)
    
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
        bottomOfScreen()
    }
    
    private func upperPartScreen() {
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
            myView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 311),
            myView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 61),
            myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -159),
            myView2.heightAnchor.constraint(equalToConstant: 100)
        ])
        myView2.addSubview(myLabelView2)
        myView2.addSubview(myLabel2View2)
        myView2.addSubview(myImageIbVw2)
        NSLayoutConstraint.activate([
            myLabelView2.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 11),
            myLabelView2.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 12),
            myLabelView2.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -73),
            myLabelView2.heightAnchor.constraint(equalToConstant: 14),
            
            myLabel2View2.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 38),
            myLabel2View2.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 30),
            myLabel2View2.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -80),
            myLabel2View2.heightAnchor.constraint(equalToConstant: 15),
            
            myImageIbVw2.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 38),
            myImageIbVw2.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 13),
            myImageIbVw2.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -10),
            myImageIbVw2.heightAnchor.constraint(equalToConstant: 48)
            
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
            myView3.topAnchor.constraint(equalTo: view.topAnchor, constant: 390),
            myView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180),
            myView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -53),
            myView3.heightAnchor.constraint(equalToConstant: 55)
        ])
        myView3.addSubview(myLabelView3)
        myView3.addSubview(myLabel2View3)
        myView3.addSubview(myLabel3View3)
        NSLayoutConstraint.activate([
            myLabelView3.topAnchor.constraint(equalTo: myView3.topAnchor, constant: 11),
            myLabelView3.leadingAnchor.constraint(equalTo: myView3.leadingAnchor, constant: 11),
            myLabelView3.trailingAnchor.constraint(equalTo: myView3.trailingAnchor, constant: -60),
            
            myLabel2View3.topAnchor.constraint(equalTo: myView3.topAnchor, constant: 28),
            myLabel2View3.leadingAnchor.constraint(equalTo: myView3.leadingAnchor, constant: 11),
            myLabel2View3.trailingAnchor.constraint(equalTo: myView3.trailingAnchor, constant: -75),
            
            myLabel3View3.topAnchor.constraint(equalTo: myView3.topAnchor, constant: 19),
            myLabel3View3.leadingAnchor.constraint(equalTo: myView3.leadingAnchor, constant: 105),
            myLabel3View3.trailingAnchor.constraint(equalTo: myView3.trailingAnchor, constant: -8),
            
        ])
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
        
        myBottomView.addSubview(myTrealingLine)
        myBottomView.addSubview(myLeadingLine)
        NSLayoutConstraint.activate([
            myTrealingLine.topAnchor.constraint(equalTo: myBankText.bottomAnchor, constant: 35),
            myTrealingLine.leadingAnchor.constraint(equalTo: myBottomView.leadingAnchor, constant: 167),
            
            myLeadingLine.topAnchor.constraint(equalTo: myBankText.bottomAnchor, constant: 45),
            myLeadingLine.trailingAnchor.constraint(equalTo: myBottomView.trailingAnchor, constant: -167)
        ])
        
        myBottomView.addSubview(myBottomButton)
        NSLayoutConstraint.activate([
            myBottomButton.topAnchor.constraint(equalTo: myLeadingLine.bottomAnchor, constant: 35),
            myBottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            myBottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            myBottomButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        myBottomButton.addTarget(self, action: #selector(registerTapped), for: .touchUpInside)
        
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
    
    @objc func registerTapped(_ sender: UIButton) {
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
