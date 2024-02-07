//
//  BankViewController.swift
//  my real project 1
//
//  Created by Nurtilek on 2/2/24.
//

import UIKit

class BankViewController: UIViewController {
    
    static var balance: Int = 10000
    
    private lazy var myImage1: UIImageView = MakerView.shared.makeImage(image: "adama")
    
    private lazy var myStackVw3: UIStackView = MakerView.shared.makerStack(axis: .horizontal,
                                                                           spacing: 10,
                                                                           alignment: .center,
                                                                           layerCorneradius: 16,
                                                                           backgroundColor: .white)
    
    private lazy var myImagevw3: UIImageView = MakerView.shared.makeImage(image: "award_star")
    
    private lazy var mylblVw3: UILabel = MakerView.shared.makeLbl(text: "1.972 Points",
                                                                  textColor: .black,
                                                                  textSize: 10,
                                                                  ofSize: .medium)
    
    private lazy var BalanceLbl: UILabel = MakerView.shared.makeLbl(text: "Your Balance",
                                                                    textColor: .black,
                                                                    textSize: 20,
                                                                    ofSize: .bold)
    
    private lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var myStackVerti: UIStackView = MakerView.shared.makerStack(spacing: 3,
                                                                             layerCorneradius: 16,
                                                                             backgroundColor: .systemYellow)
    
    private lazy var myStackHori: UIStackView = MakerView.shared.makerStack(axis: .horizontal,
                                                                            spacing: 12,
                                                                            layerCorneradius: 16,
                                                                            backgroundColor: .systemYellow)
    
    private lazy var myButtonInstc1: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = "Visa"
        configuration.image = UIImage(systemName: "creditcard")
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        view.addTarget(self, action: #selector(visaTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButtonInstc2: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = "MBank"
        configuration.image = UIImage(systemName: "creditcard.fill")
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        view.addTarget(self, action: #selector(MBankTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButtonInstc3: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = "Qiwi"
        configuration.image = UIImage(systemName: "creditcard.and.123")
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        view.addTarget(self, action: #selector(QiwiTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButtonInstc4: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = "Kicb"
        configuration.attributedTitle?.font = .systemFont(ofSize: 16, weight: .regular)
        configuration.image = UIImage(systemName: "person.text.rectangle.fill")
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        view.addTarget(self, action: #selector(KicbTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myBottomView: UIView = MakerView().makeUIView(layerCorneradius: 400)
    
    private lazy var myGoalsLbl: UILabel = MakerView().makeLbl(text: "Goals",
                                                               textColor: .black,
                                                               textSize: 20,
                                                               ofSize: .bold)
    
    private lazy var myImageInBottomvw: UIImageView = MakerView().makeImage(image: "angle")
    
    private lazy var myLabelInBottmVw: UILabel = MakerView().makeLbl(text: "%13.3",
                                                                     textColor: .systemMint,
                                                                     textSize: 17,
                                                                     ofSize: .bold)
    
    private lazy var myLabel2InBottmVw: UILabel = MakerView().makeLbl(text: "this week",
                                                                      textColor: .black,
                                                                      textSize: 17,
                                                                      ofSize: .light)
    
    private lazy var myStackBottomVw: UIStackView = MakerView().makerStack(axis: .horizontal,
                                                                           spacing: 2,
                                                                           alignment: .center,
                                                                           layerCorneradius: 16,
                                                                           backgroundColor: .white)
    
    private lazy var myImageBottomVw: UIImageView = MakerView().makeImage(image: "plus")
    
    private lazy var mylblBottomVw: UILabel = MakerView().makeLbl(text: "Create New",
                                                                  textColor: .black,
                                                                  textSize: 12,
                                                                  ofSize: .bold)
    
    private lazy var myLeadingUIView: UIView = MakerView().makeUIView(layerCorneradius: 12,
                                                                      backgroundColor: .systemMint)
    
    private lazy var myImageInLeadingVw: UIImageView = MakerView().makeImage(image: "coin")
    
    private lazy var mylblInLeadingBottom: UILabel = MakerView().makeLbl(text: "Savings",
                                                                         textColor: .black,
                                                                         textSize: 14,
                                                                         ofSize: .bold)
    
    private lazy var mylbl2InLeadingBottom: UILabel = MakerView().makeLbl(text: "Rp.120.111.00",
                                                                          textColor: .black,
                                                                          textSize: 16,
                                                                          ofSize: .light)
    
    private lazy var myTrailingUIView: UIView = MakerView().makeUIView(layerCorneradius: 12,
                                                                       backgroundColor: .systemMint)
    
    private lazy var myImageInTraelingVw: UIImageView = MakerView().makeImage(image: "NLO")
    
    private lazy var mylblInTrealingBottom: UILabel = MakerView().makeLbl(text: "Vacation",
                                                                          textColor: .black,
                                                                          textSize: 14,
                                                                          ofSize: .bold)
    
    private lazy var mylbl2InTrealingBottom: UILabel = MakerView().makeLbl(text: "Rp.111.112.000.00r",
                                                                           textColor: .black,
                                                                           textSize: 16,
                                                                           ofSize: .light)
    
    private lazy var labelInBottom: UILabel = MakerView().makeLbl(text: "Promos",
                                                                  textColor: .black,
                                                                  textSize: 20,
                                                                  ofSize: .bold)
    
    private lazy var ButtonInBottom: UIButton = MakerView().makeBTN(title: "See more",
                                                                    for: .normal,
                                                                    colorBT: .systemMint)
    
    private lazy var myImageBottom: UIImageView = MakerView().makeImage(image: "Rectangle")
    
    private lazy var bottomView: UIView = MakerView().makeUIView(layerCorneradius: 20,
                                                                 backgroundColor: .systemMint)
    
    private lazy var myButton1: UIButton = {
        var configuration = UIButton.Configuration.plain()
        if let image = UIImage(systemName: "house.fill")?.withRenderingMode(.alwaysTemplate) {
            configuration.image = image
        }
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        //  view.addTarget(self, action: #selector(firstButtonTapped(sender: )), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButton2: UIButton = {
        var configuration = UIButton.Configuration.plain()
        if let image = UIImage(systemName: "circle.fill")?.withRenderingMode(.alwaysTemplate) {
            configuration.image = image
        }
        configuration.baseForegroundColor = .systemGray4
        let view = UIButton(configuration: configuration)
        //  view.addTarget(self, action: #selector(firstButtonTapped(sender: )), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButton3: UIButton = {
        var configuration = UIButton.Configuration.plain()
        if let image = UIImage(systemName: "heart.fill")?.withRenderingMode(.alwaysTemplate) {
            configuration.image = image
        }
        configuration.baseForegroundColor = .systemGray4
        let view = UIButton(configuration: configuration)
        //  view.addTarget(self, action: #selector(firstButtonTapped(sender: )), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButton4: UIButton = {
        var configuration = UIButton.Configuration.plain()
        if let image = UIImage(systemName: "person.fill")?.withRenderingMode(.alwaysTemplate) {
            configuration.image = image
        }
        configuration.baseForegroundColor = .systemGray4
        let view = UIButton(configuration: configuration)
        //  view.addTarget(self, action: #selector(firstButtonTapped(sender: )), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myButton5: UIButton = {
        var configuration = UIButton.Configuration.plain()
        if let image = UIImage(systemName: "qrcode.viewfinder")?.withRenderingMode(.alwaysTemplate) {
            configuration.image = image
        }
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration)
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        //  view.addTarget(self, action: #selector(firstButtonTapped(sender: )), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemMint
        upperPartScreen()
        myBottomOfScreen()
        bottomScreen()
    }
    
    private func upperPartScreen() {
        view.addSubview(myImage1)
        NSLayoutConstraint.activate([
            myImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            myImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myImage1.heightAnchor.constraint(equalToConstant: 35),
            myImage1.widthAnchor.constraint(equalToConstant: 35)
        ])
        
        view.addSubview(myStackVw3)
        NSLayoutConstraint.activate([
            myStackVw3.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            myStackVw3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            myStackVw3.heightAnchor.constraint(equalToConstant: 30),
            myStackVw3.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        myStackVw3.addArrangedSubview(myImagevw3)
        NSLayoutConstraint.activate([
            myImagevw3.leadingAnchor.constraint(equalTo: myStackVw3.leadingAnchor, constant: 9)
        ])
        myStackVw3.addArrangedSubview(mylblVw3)
        
        view.addSubview(BalanceLbl)
        view.addSubview(balanceLabel)
        NSLayoutConstraint.activate([
            BalanceLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
            BalanceLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            balanceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
            balanceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        balanceLabel.text = "Rp: \(10000) $"
        
        view.addSubview(myBottomView)
        NSLayoutConstraint.activate([
            myBottomView.topAnchor.constraint(equalTo: view.topAnchor, constant: 234),
            myBottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -244),
            myBottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 244),
            myBottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100)
        ])
        
        myBottomView.addSubview(myStackVerti)
        NSLayoutConstraint.activate([
            myStackVerti.topAnchor.constraint(equalTo: view.topAnchor, constant: 222),
            myStackVerti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            myStackVerti.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            myStackVerti.heightAnchor.constraint(equalToConstant: 80),
            
            myButtonInstc1.heightAnchor.constraint(equalToConstant: 80),
            myButtonInstc2.heightAnchor.constraint(equalToConstant: 80),
            myButtonInstc3.heightAnchor.constraint(equalToConstant: 80),
            myButtonInstc4.heightAnchor.constraint(equalToConstant: 80)
        ])
        myStackVerti.addArrangedSubview(myStackHori)
        myStackHori.addArrangedSubview(myButtonInstc1)
        myStackHori.addArrangedSubview(myButtonInstc2)
        myStackHori.addArrangedSubview(myButtonInstc3)
        myStackHori.addArrangedSubview(myButtonInstc4)
    }
    
    private func myBottomOfScreen() {
        myBottomView.addSubview(myGoalsLbl)
        myBottomView.addSubview(myImageInBottomvw)
        myBottomView.addSubview(myLabelInBottmVw)
        myBottomView.addSubview(myLabel2InBottmVw)
        NSLayoutConstraint.activate([
            myGoalsLbl.topAnchor.constraint(equalTo: myStackVerti.bottomAnchor, constant: 26),
            myGoalsLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            myImageInBottomvw.topAnchor.constraint(equalTo: myStackVerti.bottomAnchor, constant: 33),
            myImageInBottomvw.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
            myImageInBottomvw.heightAnchor.constraint(equalToConstant: 10),
            myImageInBottomvw.widthAnchor.constraint(equalToConstant: 10),
            
            myLabelInBottmVw.topAnchor.constraint(equalTo: myStackVerti.bottomAnchor, constant: 28),
            myLabelInBottmVw.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            
            myLabel2InBottmVw.topAnchor.constraint(equalTo: myStackVerti.bottomAnchor, constant: 28),
            myLabel2InBottmVw.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160)
        ])
        
        myBottomView.addSubview(myStackBottomVw)
        NSLayoutConstraint.activate([
            myStackBottomVw.topAnchor.constraint(equalTo: myBottomView.topAnchor, constant: 94),
            myStackBottomVw.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            myStackBottomVw.heightAnchor.constraint(equalToConstant: 30),
            myStackBottomVw.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        myStackBottomVw.addArrangedSubview(myImageBottomVw)
        NSLayoutConstraint.activate([
            myImageBottomVw.leadingAnchor.constraint(equalTo: myStackBottomVw.leadingAnchor, constant: 9)
        ])
        myStackBottomVw.addArrangedSubview(mylblBottomVw)
        
        myBottomView.addSubview(myLeadingUIView)
        myLeadingUIView.addSubview(myImageInLeadingVw)
        myLeadingUIView.addSubview(mylblInLeadingBottom)
        myLeadingUIView.addSubview(mylbl2InLeadingBottom)
        NSLayoutConstraint.activate([
            myLeadingUIView.topAnchor.constraint(equalTo: myLabelInBottmVw.topAnchor, constant: 58),
            myLeadingUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            myLeadingUIView.heightAnchor.constraint(equalToConstant: 110),
            myLeadingUIView.widthAnchor.constraint(equalToConstant: 165),
            
            myImageInLeadingVw.topAnchor.constraint(equalTo: myLeadingUIView.topAnchor, constant: 12),
            myImageInLeadingVw.leadingAnchor.constraint(equalTo: myLeadingUIView.leadingAnchor, constant: 12),
            myImageInLeadingVw.heightAnchor.constraint(equalToConstant: 40),
            myImageInLeadingVw.widthAnchor.constraint(equalToConstant: 40),
            
            mylblInLeadingBottom.topAnchor.constraint(equalTo: myImageInLeadingVw.bottomAnchor, constant: 1),
            mylblInLeadingBottom.leadingAnchor.constraint(equalTo: myLeadingUIView.leadingAnchor, constant: 12),
            
            mylbl2InLeadingBottom.topAnchor.constraint(equalTo: mylblInLeadingBottom.bottomAnchor, constant: 0),
            mylbl2InLeadingBottom.leadingAnchor.constraint(equalTo: myLeadingUIView.leadingAnchor, constant: 12)
        ])
        
        myBottomView.addSubview(myTrailingUIView)
        myTrailingUIView.addSubview(myImageInTraelingVw)
        myTrailingUIView.addSubview(mylblInTrealingBottom)
        myTrailingUIView.addSubview(mylbl2InTrealingBottom)
        NSLayoutConstraint.activate([
            myTrailingUIView.topAnchor.constraint(equalTo: myLabelInBottmVw.topAnchor, constant: 58),
            myTrailingUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            myTrailingUIView.heightAnchor.constraint(equalToConstant: 110),
            myTrailingUIView.widthAnchor.constraint(equalToConstant: 165),
            
            myImageInTraelingVw.topAnchor.constraint(equalTo: myTrailingUIView.topAnchor, constant: 12),
            myImageInTraelingVw.leadingAnchor.constraint(equalTo: myTrailingUIView.leadingAnchor, constant: 12),
            myImageInTraelingVw.heightAnchor.constraint(equalToConstant: 40),
            myImageInTraelingVw.widthAnchor.constraint(equalToConstant: 40),
            
            mylblInTrealingBottom.topAnchor.constraint(equalTo: myImageInTraelingVw.bottomAnchor, constant: 1),
            mylblInTrealingBottom.leadingAnchor.constraint(equalTo: myTrailingUIView.leadingAnchor, constant: 12),
            
            mylbl2InTrealingBottom.topAnchor.constraint(equalTo: mylblInTrealingBottom.bottomAnchor, constant: 0),
            mylbl2InTrealingBottom.leadingAnchor.constraint(equalTo: myTrailingUIView.leadingAnchor, constant: 12)
        ])
    }
    
    private func bottomScreen() {
        myBottomView.addSubview(labelInBottom)
        myBottomView.addSubview(ButtonInBottom)
        myBottomView.addSubview(myImageBottom)
        myBottomView.addSubview(bottomView)
        
        NSLayoutConstraint.activate([
            labelInBottom.topAnchor.constraint(equalTo: myTrailingUIView.bottomAnchor, constant: 27),
            labelInBottom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            ButtonInBottom.topAnchor.constraint(equalTo: myLeadingUIView.bottomAnchor, constant: 27),
            ButtonInBottom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            myImageBottom.topAnchor.constraint(equalTo: myTrailingUIView.bottomAnchor, constant: 75),
            myImageBottom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myImageBottom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myImageBottom.heightAnchor.constraint(equalToConstant: 170),
            
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bottomView.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        bottomView.addSubview(myButton1)
        bottomView.addSubview(myButton2)
        bottomView.addSubview(myButton3)
        bottomView.addSubview(myButton4)
        bottomView.addSubview(myButton5)
        NSLayoutConstraint.activate([
            myButton1.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            myButton1.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 38),
            myButton1.heightAnchor.constraint(equalToConstant: 20),
            myButton1.widthAnchor.constraint(equalToConstant: 20),
            
            myButton2.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            myButton2.leadingAnchor.constraint(equalTo: myButton1.leadingAnchor, constant: 60),
            myButton2.heightAnchor.constraint(equalToConstant: 20),
            myButton2.widthAnchor.constraint(equalToConstant: 20),
            
            myButton3.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            myButton3.trailingAnchor.constraint(equalTo: myButton2.leadingAnchor, constant: 165),
            myButton3.heightAnchor.constraint(equalToConstant: 20),
            myButton3.widthAnchor.constraint(equalToConstant: 20),
            
            myButton4.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            myButton4.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -38),
            myButton4.heightAnchor.constraint(equalToConstant: 20),
            myButton4.widthAnchor.constraint(equalToConstant: 20),
            
            myButton5.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton5.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            myButton5.heightAnchor.constraint(equalToConstant: 48),
            myButton5.widthAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    @objc func visaTapped(_ sender: UIButton) {
        let vc = VisaViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func MBankTapped(_ sender: UIButton) {
        let vc = MBankViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func QiwiTapped(_ sender: UIButton) {
        let vc = QiwiViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func KicbTapped(_ sender: UIButton) {
        let vc = KicbViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
