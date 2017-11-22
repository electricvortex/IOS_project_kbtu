//
//  Card.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/22/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import Foundation
import UIKit

struct GnezdoCardUI {
    var Background: UIColor!
    var TitleColor: UIColor!
    var UserCountColor: UIColor!
    var CompanyCountColor: UIColor!
    var ExpirationDateColor: UIColor!
    
    init(background: UIColor, titleColor: UIColor, userCountColor: UIColor, companyCountColor: UIColor, expirationDateColor: UIColor) {
        self.Background = background
        self.TitleColor =  titleColor
        self.UserCountColor = userCountColor
        self.CompanyCountColor = companyCountColor
        self.ExpirationDateColor = expirationDateColor
    }
}

struct GnezdoCard {
    var Title: String!
    var UserCount: String!
    var CompanyCount: String!
    var ExpirationDate: String!
    var IsActive: Bool!
    var CardInterface: GnezdoCardUI!
    
    init(title: String, userCount: String, companyCount: String, expirationDate: String, isActive: Bool, cardUI: GnezdoCardUI) {
        self.Title = title
        self.UserCount = userCount
        self.CompanyCount = companyCount
        self.ExpirationDate = expirationDate
        self.IsActive = isActive
        self.CardInterface = cardUI
    }
}
