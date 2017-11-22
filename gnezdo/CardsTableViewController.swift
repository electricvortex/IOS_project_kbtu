//
//  CardsTableViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import Cards

class CardsTableViewController: UITableViewController {

    var test: [GnezdoCard] = [GnezdoCard(title: "Sattar bank", userCount: "8", companyCount: "10", expirationDate: "30.11.2017", isActive: true, cardUI: GnezdoCardUI(background: UIColor(red: 0.3922, green: 0.7961, blue: 0.9882, alpha: 1.0), titleColor: UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), userCountColor: UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), companyCountColor: UIColor(red: 0.9922, green: 0.9373, blue: 0.9255, alpha: 1.0), expirationDateColor: UIColor(red: 0.9451, green: 0.3176, blue: 0.2353, alpha: 1.0)))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CardTableViewCell.self, forCellReuseIdentifier: "cell")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CardTableViewCell
        cell.title.text = test[indexPath.row].Title
        cell.isActive = test[indexPath.row].IsActive
        //cell.bkgrnd.backgroundColor = UIColor(patternImage: UIImage(named: "Test 2")!)
        cell.bkgrnd.backgroundColor = test[indexPath.row].CardInterface.Background
        cell.title.textColor = test[indexPath.row].CardInterface.TitleColor
        return cell
    }
 

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let goController = CardViewController()
        goController.setBackground(bkg: test[indexPath.row].CardInterface.Background)
        goController.setTitle(t: test[indexPath.row].Title)
        goController.setCompanyCount(c: test[indexPath.row].CompanyCount)
        goController.setMyCount(c: test[indexPath.row].UserCount)
        goController.setExpirationDate(d: test[indexPath.row].ExpirationDate)
        goController.setCompanyCountColor(c: test[indexPath.row].CardInterface.CompanyCountColor)
        goController.setMyCountColor(c: test[indexPath.row].CardInterface.UserCountColor)
        goController.setExpirationDateColor(c: test[indexPath.row].CardInterface.ExpirationDateColor)
        goController.setTitleColor(c: test[indexPath.row].CardInterface.TitleColor)
        navigationController?.pushViewController(goController, animated: true)
    }

}
