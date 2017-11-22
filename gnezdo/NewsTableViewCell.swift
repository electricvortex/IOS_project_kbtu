//
//  NewsTableViewCell.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import Cards

class NewsTableViewCell: UITableViewCell {
    
    private var bkgrnd = UIView()
    private var imgPic = UIImageView()
    private var title = UILabel()
    private var date = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        contentView.backgroundColor = UIColor(red: 0.9333, green: 0.9333, blue: 0.9333, alpha: 1.0)
        contentView.addSubview(bkgrnd)
        

        bkgrnd.snp.makeConstraints{ (make) -> Void in
            make.leading.top.equalTo(10)
            make.trailing.bottom.equalTo(-10)
        }
        title.numberOfLines = 3
        title.textColor = UIColor.black

        date.textColor = UIColor.lightGray

        bkgrnd.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)

        bkgrnd.addSubview(imgPic)
        bkgrnd.addSubview(title)
        bkgrnd.addSubview(date)

        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 2)

        bkgrnd.layer.masksToBounds = false
        bkgrnd.layer.cornerRadius = 2
        bkgrnd.layer.shadowOffset = CGSize(width: 0, height: 3)
        bkgrnd.layer.shadowColor = UIColor.black.cgColor
        bkgrnd.layer.shadowPath = shadowPath.cgPath

        imgPic.snp.makeConstraints{ (make) -> Void in
            make.leading.equalToSuperview().offset(7)
            make.size.equalTo(100)
            make.centerY.equalToSuperview()
        }

        title.snp.makeConstraints{ (make) -> Void in
            make.leading.equalTo(imgPic.snp.trailing).offset(7)
            make.trailing.equalToSuperview().offset(-7)
            make.top.equalTo(imgPic)
        }

        date.snp.makeConstraints{ (make) -> Void in
            make.leading.equalTo(title)
            make.top.equalTo(title.snp.bottom).offset(5)
        }
    }
    
    func setImage(i: String) {
        self.imgPic.image = UIImage(named: i)
    }
    
    func setTitle(t: String) {
        self.title.text = t
    }
    
    func setDate(d: String) {
        self.date.text = d
    }
    
}
