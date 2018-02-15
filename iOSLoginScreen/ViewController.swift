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
        view.backgroundColor = UIColor(red: 80/255, green: 220/255, blue: 100/255, alpha: 1)
        
        setupContraints()
    }

    let emailTextField: UITextField = {
       let tf = UITextField()
        tf.placeholder = "Type email here"
        tf.textColor = .black
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    func setupContraints() {
        view.addSubview(emailTextField)
        
        emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }


}

