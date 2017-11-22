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

        let news = NewsTableViewController()
        news.title = "New Discounts"
        news.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "news"), tag : 0)
        
        let cards = CardsTableViewController()
        cards.title = "My Cards"
        cards.tabBarItem = UITabBarItem(title: "",image: UIImage(named: "cards"), tag: 1)
        
        self.tabBar.tintColor = UIColor(red: 0.9451, green: 0.3176, blue: 0.2353, alpha: 1.0)
        
        let viewControllerList = [news, cards]
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0) }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
