//
//  News.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/22/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import Foundation
import UIKit

struct News {
    var Image: String!
    var Title: String!
    var Date: String!
    
    init(image: String, title: String, date: String) {
        self.Image = image
        self.Title = title
        self.Date = date
    }
}
