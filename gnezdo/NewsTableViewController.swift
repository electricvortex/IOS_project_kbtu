//
//  NewsTableViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    var test: [News] = [News(image: "Test 1", title: "Test 1", date: "18.10.1995"), News(image: "Test 2", title: "Test 2", date: "19.10.1996")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = UIColor(red: 0.9333, green: 0.9333, blue: 0.9333, alpha: 1.0)
        self.tableView.tableHeaderView = nil
        self.tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsTableViewCell
        cell.setTitle(t: test[indexPath.row].Title)
        cell.setDate(d: test[indexPath.row].Date)
        cell.setImage(i: test[indexPath.row].Image)
        return cell
        
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }

}
