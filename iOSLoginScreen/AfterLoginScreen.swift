//
//  ViewController2.swift
//  iOSLoginScreen
//
//  Created by Adrian Kasiczak on 19/02/2018.
//  Copyright © 2018 Adrian Kasiczak. All rights reserved.
//

import UIKit

class AfterLoginScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        setupConstraints()
    }

    
    let gratzLabel: UILabel = {
       let lbl = UILabel()
        lbl.text = "You have successfully sign in!"
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        return lbl
    }()
    
    func setupConstraints() {
        view.addSubview(gratzLabel)
        
        gratzLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        gratzLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        gratzLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        gratzLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}
