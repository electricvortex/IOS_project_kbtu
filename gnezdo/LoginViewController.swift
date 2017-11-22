//
//  ViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/5/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    var projectName: UILabel!
    var welcomeText: UILabel!
    var username: UITextField!
    var password: UITextField!
    var login: UIButton!
    var signUpText: UILabel!
    var signUp: UILabel!
    var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectName = UILabel()
        welcomeText = UILabel()
        username = UITextField()
        password = UITextField()
        login = UIButton()
        signUp = UILabel()
        signUpText = UILabel()
        logo = UIImageView()
        
        
        self.view.addSubview(projectName)
        projectName.text = "GNEZDO"
        projectName.textAlignment = .center
        projectName.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(70)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(90)
        }
        
        self.view.addSubview(welcomeText)
        self.view.addSubview(username)
        self.view.addSubview(password)
        self.view.addSubview(login)
        self.view.addSubview(signUp)
        self.view.addSubview(signUpText)
        self.view.addSubview(logo)
        
        //logo.image = UIImage(named: "logo")
        
        welcomeText.text = "Welcome"
        welcomeText.textAlignment = .center
        welcomeText.font = UIFont(name: welcomeText.font.fontName, size: 35)
        welcomeText.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(160)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(130)
        }
        
        username.textAlignment = .center
        username.placeholder = "username"
        username.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(200)
        }
        
        password.textAlignment = .center
        password.placeholder = "password"
        password.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(260)
        }
        
        login.setTitle("Login", for: .normal)
        login.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        login.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(325)
        }
        
        signUpText.textAlignment = .left
        signUpText.text = "Don't have an account?"
        signUpText.font = UIFont(name: signUpText.font.fontName, size: 14)
        signUpText.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(180)
            make.height.equalTo(25)
            make.centerX.equalTo(170)
            make.centerY.equalTo(365)
        }
        
        signUp.text = "Sign Up"
        signUp.font = UIFont(name: (signUp.font?.fontName)!, size: 14)
        signUp.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(60)
            make.height.equalTo(25)
            make.centerX.equalTo(272)
            make.centerY.equalTo(365)
        }
        
        logo.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(120)
            make.height.equalTo(120)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(515)
        }
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signUpPage))
        signUp.isUserInteractionEnabled = true
        signUp.addGestureRecognizer(gestureRecognizer)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        
        projectName.textColor = UIColor(red: 0.1412, green: 0.1412, blue: 0.1412, alpha: 1.0)
        
        welcomeText.textColor = UIColor(red: 0.1412, green: 0.1412, blue: 0.1412, alpha: 1.0)
        
        username.borderStyle = UITextBorderStyle.roundedRect
        username.layer.cornerRadius = 7
        username.backgroundColor = UIColor(red: 0.9686, green: 0.9686, blue: 0.9686, alpha: 1.0)
        
        password.borderStyle = UITextBorderStyle.roundedRect
        password.layer.cornerRadius = 7
        password.backgroundColor = UIColor(red: 0.9686, green: 0.9686, blue: 0.9686, alpha: 1.0)
        
        login.layer.cornerRadius = 7
        login.backgroundColor = UIColor(red: 0.9451, green: 0.3176, blue: 0.2353, alpha: 1.0)
        
        signUpText.textColor = UIColor(red: 0.1412, green: 0.1412, blue: 0.1412, alpha: 1.0)
        signUp.textColor = UIColor(red: 0.9451, green: 0.3176, blue: 0.2353, alpha: 1.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        
//        self.navigationController?.setNavigationBarHidden(false, animated: animated)
//    }

    @objc func signUpPage(sender: UITapGestureRecognizer) {
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }
    
}

