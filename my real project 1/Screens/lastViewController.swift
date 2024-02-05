//
//  lastViewController.swift
//  my real project 1
//
//  Created by Nurtilek on 2/5/24.
//

import UIKit

class lastViewController: UIViewController {
    
    private lazy var myImage1: UIImageView = MakerView().makeImage(image: "Group 103")
    

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
        view.addSubview(myImage1)
        NSLayoutConstraint.activate([
        myImage1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        myImage1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        myImage1.heightAnchor.constraint(equalToConstant: 170),
        myImage1.widthAnchor.constraint(equalToConstant: 170)
        ])
    }
    
    @objc func backButtonTapped() {
        for controller in navigationController?.viewControllers ?? [] {
            if let vc = controller as? BankViewController {
                navigationController?.popToViewController(vc, animated: true)
                break
            }
        }
    }

}
