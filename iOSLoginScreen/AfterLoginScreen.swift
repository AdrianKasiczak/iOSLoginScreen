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
    }

    
    let gratzLabel: UILabel = {
       let lbl = UILabel()
        lbl.text = "You have successfully sign in!"
        lbl.textColor = .black
        return lbl
    }()

}
