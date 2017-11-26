//
//  ModalViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/23/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import SnapKit

class ModalViewController: UIViewController {

    var frontView = UIScrollView()
    var newsImage = UIImageView()
    var newsTitle = UILabel()
    var newsContent = UILabel()
    var vertical = UIView()
    var dissmisButton = UIButton()
    var backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(dissmisButton)
        self.view.addSubview(vertical)
        self.view.addSubview(backButton)
        
        dissmisButton.addTarget(self, action: #selector(closeView), for: .touchUpInside)
        
        frontView.backgroundColor = .white
        
        vertical.layer.cornerRadius = 15
        vertical.addSubview(frontView)
        vertical.addSubview(backButton)
        vertical.backgroundColor = UIColor.white
        vertical.snp.makeConstraints{ (make) -> Void in
            make.top.equalToSuperview().offset(40)
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-70)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(UIColor.black, for: .normal)
        backButton.backgroundColor = UIColor(red: 0.3961, green: 0.8431, blue: 0.6824, alpha: 1.0)
        backButton.addTarget(self, action: #selector(closeView), for: .touchUpInside)
        backButton.layer.cornerRadius = 15
        
        backButton.snp.makeConstraints{ (make) -> Void in
            make.bottom.equalTo(vertical.snp.bottom).offset(3)
            make.leading.equalTo(vertical.snp.leading)
            make.trailing.equalTo(vertical.snp.trailing)
            make.height.equalTo(45)
        }
        
        dissmisButton.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        dissmisButton.snp.makeConstraints{ (make) -> Void in
            make.top.leading.equalToSuperview()
            make.bottom.trailing.equalToSuperview()
        }
        
        frontView.addSubview(newsImage)
        frontView.addSubview(newsTitle)
        frontView.addSubview(newsContent)
        
        frontView.snp.makeConstraints{ (make) -> Void in
            make.top.equalTo(10)
            make.leading.equalTo(10)
            make.trailing.equalTo(-10)
            make.height.equalTo(505)
        }
        
        newsImage.snp.makeConstraints{ (make) -> Void in
            make.top.leading.equalToSuperview()
            make.width.equalTo(vertical)
            make.height.equalTo(300)
        }
        newsImage.layer.cornerRadius = 15
        
        newsTitle.numberOfLines = 0
        newsTitle.textAlignment = .center
        newsTitle.font = newsTitle.font.withSize(24)
        newsTitle.snp.makeConstraints{ (make) -> Void in
            make.top.equalTo(newsImage.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(285)
        }
        
        newsContent.numberOfLines = 0
        newsContent.snp.makeConstraints{ (make) -> Void in
            make.top.equalTo(newsTitle.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalToSuperview()
            make.width.equalTo(285)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func closeView(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
