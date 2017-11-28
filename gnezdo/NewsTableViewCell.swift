//
//  NewsTableViewCell.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit

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
        contentView.backgroundColor = UIColor(red: 0.2196, green: 0.2588, blue: 0.3255, alpha: 1.0)
        contentView.addSubview(bkgrnd)
        
        bkgrnd.layer.cornerRadius = 10
        bkgrnd.setShadowWithColor(color: .white, opacity: 0.5, offset: CGSize(width: 1, height: 3), radius: 3.6, viewCornerRadius: 5)
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

        imgPic.layer.masksToBounds = true
        imgPic.layer.cornerRadius = 10
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


extension UIView {
    /**
     Set a shadow on a UIView.
     - parameters:
     - color: Shadow color, defaults to black
     - opacity: Shadow opacity, defaults to 1.0
     - offset: Shadow offset, defaults to zero
     - radius: Shadow radius, defaults to 0
     - viewCornerRadius: If the UIView has a corner radius this must be set to match
     */
    func setShadowWithColor(color: UIColor?, opacity: Float?, offset: CGSize?, radius: CGFloat, viewCornerRadius: CGFloat?) {
        //layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: viewCornerRadius ?? 0.0).CGPath
        layer.shadowColor = color?.cgColor ?? UIColor.black.cgColor
        layer.shadowOpacity = opacity ?? 1.0
        layer.shadowOffset = offset ?? CGSize.zero
        layer.shadowRadius = radius ?? 0
    }
}
