//
//  CardTableViewCell.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    var bkgrnd = UIView()
    var title = UILabel()
    private var imgPic = UIImageView()
    var isActive = Bool()
    
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
            make.leading.top.equalTo(12)
            make.trailing.bottom.equalTo(-12)
        }
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 2)
        bkgrnd.layer.masksToBounds = false
        bkgrnd.layer.cornerRadius = 8
        bkgrnd.layer.shadowOffset = CGSize(width: 0, height: 3)
        bkgrnd.layer.shadowColor = UIColor.black.cgColor
        bkgrnd.layer.shadowPath = shadowPath.cgPath
        
        title.font = title.font.withSize(30)
        
        if (isActive == true) {
            imgPic.image = UIImage(named: "Yes")
        } else {
            imgPic.image = UIImage(named: "Not")
        }
        
        bkgrnd.addSubview(title)
        bkgrnd.addSubview(imgPic)
        
        title.snp.makeConstraints{ (make) -> Void in
            make.leading.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
            make.trailing.equalTo(imgPic).offset(-7)
        }
        
        imgPic.snp.makeConstraints{ (make) -> Void in
            make.trailing.equalToSuperview().offset(-10)
            make.size.equalTo(40)
            make.centerY.equalToSuperview()
        }
        
    }
}
