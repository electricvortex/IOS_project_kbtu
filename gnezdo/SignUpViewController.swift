//
//  SignUpViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/19/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import SnapKit

class SignUpViewController: UIViewController {

    var mainText: UILabel!
    var username: UITextField!
    var email: UITextField!
    var password: UITextField!
    var signUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainText = UILabel()
        username = UITextField()
        email = UITextField()
        password = UITextField()
        signUp = UIButton()
        
        self.view.addSubview(mainText)
        self.view.addSubview(username)
        self.view.addSubview(email)
        self.view.addSubview(password)
        self.view.addSubview(signUp)
        
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        username.borderStyle = UITextBorderStyle.roundedRect
        username.layer.cornerRadius = 7
        username.backgroundColor = UIColor(red: 0.9686, green: 0.9686, blue: 0.9686, alpha: 1.0)
        
        password.borderStyle = UITextBorderStyle.roundedRect
        password.layer.cornerRadius = 7
        password.backgroundColor = UIColor(red: 0.9686, green: 0.9686, blue: 0.9686, alpha: 1.0)
        
        email.borderStyle = UITextBorderStyle.roundedRect
        email.layer.cornerRadius = 7
        email.backgroundColor = UIColor(red: 0.9686, green: 0.9686, blue: 0.9686, alpha: 1.0)
        
        signUp.layer.cornerRadius = 7
        signUp.backgroundColor = UIColor(red: 0.9451, green: 0.3176, blue: 0.2353, alpha: 1.0)
        
        mainText.textColor = UIColor(red: 0.1412, green: 0.1412, blue: 0.1412, alpha: 1.0)
        
        mainText.text = "Sign Up"
        mainText.textAlignment = .center
        mainText.font = UIFont(name: mainText.font.fontName, size: 35)
        mainText.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(160)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(110)
        }
        
        username.textAlignment = .center
        username.placeholder = "username"
        username.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(180)
        }
        
        email.textAlignment = .center
        email.placeholder = "email"
        email.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(240)
        }
        
        password.textAlignment = .center
        password.placeholder = "password"
        password.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(300)
        }
        
        signUp.setTitle("Go", for: .normal)
        signUp.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        signUp.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(365)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
