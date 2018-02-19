//
//  ViewController.swift
//  iOSLoginScreen
//
//  Created by Adrian Kasiczak on 12/02/2018.
//  Copyright © 2018 Adrian Kasiczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Background.png")!)
        
        setupContraints()
        
    }

    let emailTextField: UITextField = {
       let tf = UITextField()
        tf.placeholder = "Type email here"
        tf.textColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.borderStyle = .bezel
        tf.layer.borderColor = UIColor.white.cgColor
        tf.backgroundColor = UIColor(red: 143/255, green: 227/255, blue: 136/255, alpha: 0)
        tf.keyboardType = .emailAddress
        tf.autocapitalizationType = .none
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.isSecureTextEntry = true
        tf.placeholder = "Type password here"
        tf.textColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.borderStyle = .bezel
        tf.backgroundColor = UIColor(red: 143/255, green: 227/255, blue: 136/255, alpha: 0)
        return tf
    }()
    
    let logoLabel: UILabel = {
       let lbl = UILabel()
        lbl.text = "iOS Login Screen"
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Helvetica", size: 32.0)
        return lbl
    }()
    
    let singInButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(red: 143/255, green: 227/255, blue: 136/255, alpha: 1)
        btn.setTitleColor(UIColor(red: 56/255, green: 54/255, blue: 154/255, alpha: 1) , for: .normal)
        btn.setTitle("Sing In", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(afterLoginFunc), for: .touchUpInside)
        return btn
    }()
    
    let orLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "or"
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Helvetica", size: 22.0)
        return lbl
    }()
    
    
    let facebookButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        btn.setTitle("Connect Facebook", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    let twitterButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(red: 29/255, green: 202/255, blue: 255/255, alpha: 1)
        btn.setTitle("Connect Twitter", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    @objc func afterLoginFunc() {
        
        present(AfterLoginScreen(), animated: true, completion: nil)
        print("tesgdsf")
    }
    
    func setupContraints() {
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(logoLabel)
        view.addSubview(singInButton)
        view.addSubview(orLabel)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        
        
        
        logoLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -55).isActive = true
        logoLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: logoLabel.bottomAnchor, constant: 100).isActive = true
        
        
        passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25).isActive = true
        
        
        singInButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        singInButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        singInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        singInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 45).isActive = true
        
        
        orLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        orLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        orLabel.topAnchor.constraint(equalTo: singInButton.bottomAnchor, constant: 35).isActive = true
        
        
        facebookButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        facebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        facebookButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 10).isActive = true
        
        
        twitterButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        twitterButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        twitterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        twitterButton.topAnchor.constraint(equalTo: facebookButton.bottomAnchor, constant: 10).isActive = true
        
    }

    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

