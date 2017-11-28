//
//  HomeViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit

class HomeViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "profile"), style: .plain, target: self, action: #selector(profilePage))

        let news = NewsTableViewController()
        news.title = "New Discounts"
        news.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "news"), tag : 0)
        let cards = CardsTableViewController()
        cards.title = "My Cards"
        cards.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "cards"), tag: 1)
        
        let viewControllerList = [news, cards]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
        
        
        self.tabBar.barTintColor = UIColor(red: 0.2196, green: 0.2588, blue: 0.3255, alpha: 1.0)
        self.tabBar.tintColor = UIColor(red: 0.3961, green: 0.8431, blue: 0.6824, alpha: 1.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }

//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        //navigationController?.navigationBar.barTintColor = UIColor(red: 0.3961, green: 0.8431, blue: 0.6824, alpha: 1.0)
//        navigationController?.navigationBar.barTintColor = UIColor.clear
//    }
    
    
    
}
