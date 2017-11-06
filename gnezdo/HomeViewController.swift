//
//  ViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/5/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        username.borderStyle = UITextBorderStyle.roundedRect
        username.layer.cornerRadius = 7
        
        password.borderStyle = UITextBorderStyle.roundedRect
        password.layer.cornerRadius = 7
        
        login.layer.cornerRadius = 7
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

