//
//  CardViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import Cards

class CardViewController: UIViewController {

    private var card = UIView()
    private var companyTitle = UILabel()
    private var expirationDate = UILabel()
    private var myCount = UILabel()
    private var text = UILabel()
    private var companyCount = UILabel()
    private var circleImg = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let card1 = CardHighlight(frame: CGRect(x: 10, y: 30, width: 200 , height: 240))
//        
//        card1.backgroundColor = UIColor(red: 0, green: 94/255, blue: 112/255, alpha:1)
//        card1.icon = UIImage(named: "Yes")
//        card1.itemTitle = "Hello world"
//        card1.title = "Hi, Doe!"
//        card1.textColor = UIColor.white
//        card1.hasParallax = true
        
        self.view.addSubview(card1)
        
        self.view.addSubview(card)
        self.view.backgroundColor = UIColor(red: 0.9333, green: 0.9333, blue: 0.9333, alpha: 1.0)
        
        text.text = "OF"
        circleImg.image = resizeImage(image: UIImage(named: "Circle")!, newWidth: 160.0)
        //let colors = UIImage(named: "pine")!.getColors()
        myCount.textAlignment = .center
        
        text.textColor = expirationDate.textColor
        
        card.snp.makeConstraints{ (make) -> Void in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(70)
            make.bottom.equalTo(-60)
        }
        
        let shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: 2)
        card.layer.masksToBounds = false
        card.layer.cornerRadius = 8
        card.layer.shadowOffset = CGSize(width: 0, height: 3)
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowPath = shadowPath.cgPath
        
        companyTitle.font = companyTitle.font.withSize(42)
        text.font = text.font.withSize(50)
        myCount.font = myCount.font.withSize(100)
        companyCount.font = companyCount.font.withSize(80)
        expirationDate.font = expirationDate.font.withSize(25)
        
        card.addSubview(companyTitle)
        card.addSubview(expirationDate)
        card.addSubview(myCount)
        card.addSubview(text)
        card.addSubview(companyCount)
        card.addSubview(circleImg)
        
        companyTitle.snp.makeConstraints{ (make) -> Void in
            make.leading.top.equalToSuperview().offset(10)
        }
        
        expirationDate.snp.makeConstraints{ (make) -> Void in
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        circleImg.snp.makeConstraints{ (make) -> Void in
            make.centerX.equalTo(95)
            make.centerY.equalTo(150)
        }
        
        myCount.snp.makeConstraints{ (make) -> Void in
            make.centerX.equalTo(95)
            make.centerY.equalTo(150)
        }
        
        text.snp.makeConstraints{ (make) -> Void in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(290)
        }
        
        companyCount.snp.makeConstraints{ (make) -> Void in
            make.centerX.equalTo(225)
            make.centerY.equalTo(420)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / image.size.width
        let newHeight = image.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        image.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }

    func setBackground(bkg: UIColor) {
        self.card.backgroundColor = bkg
    }
    
    func setTitle(t: String) {
        self.companyTitle.text = t
    }
    
    func setMyCount(c: String) {
        self.myCount.text = c
    }
    
    func setCompanyCount(c: String) {
        self.companyCount.text = c
    }
    
    func setExpirationDate(d: String) {
        self.expirationDate.text = d
    }
    
    func setTitleColor(c: UIColor) {
        self.companyTitle.textColor = c
    }
    
    func setMyCountColor(c: UIColor) {
        self.myCount.textColor = c
    }
    
    func setCompanyCountColor(c: UIColor) {
        self.companyCount.textColor = c
    }
    
    func setExpirationDateColor(c: UIColor) {
        self.expirationDate.textColor = c
    }
}
