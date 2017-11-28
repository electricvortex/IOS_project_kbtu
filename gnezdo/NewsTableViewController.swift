//
//  NewsTableViewController.swift
//  gnezdo
//
//  Created by Sattar Salambayev on 11/21/17.
//  Copyright © 2017 Sattar Salambayev. All rights reserved.
//

import UIKit
import DeckTransition

class NewsTableViewController: UITableViewController {

    var test: [News] = [News(image: "Test 1", title: "Test 1", content: "Hasdjnasdjkahdjhaskdhjahskdh ajshdjahksdhahdhasjhdk asjhdjkahs dhjahsk djakshdk jah jdahdj kahdjadkhsdjhak sdjadadhashdj aksdaddajsdkahjsdhj ksdaj akjhdahsdhkajshdhasjdhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdhajshdahsdhajk shdakjhdahsdhkajshdhas jdhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdhajshdahsdhaj kshdakjhdahsdhkajs hdhasjdhahskdhakjs hdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdhajs hdahsdhajkshdak jhdahsdhkaj shdhasj  dhahskdh akjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkja hsjkdhah hasjhd jahsdhj kahjsdhja shjdhajshdahsdhajkshdakjhda hsdhkajshdhasjdha hskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjh dkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdh ajshdahsdhajkshdakjhdahsdhka jshdhasjdhahskdha kjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdha jshdahsdhajkshdakjhdahsdhkajshdh  asjdhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaks dhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkja hsjkdhah hasjhd jahsdhj kahjsdhjashjdhajshdahsdhajkshdakjhd",date: "18.10.1995"), News(image: "Test 2", title: "Test 2", content: "askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjas hjdhajshdahsdhajkshdakjhdah sdhkajshdhasjdh ahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjashj dhajshdahsdhajkshda kjhdahsdhkajshd hasjdhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdha jshdahsdhajk shdakjhd ahsd hkajshdhasj dhahskd hakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjh dkjah sjkdhah hasjhd jahsdhj kahjsdhj ashjdhajs  hdahsdhajkshdakjhda  hsdhkajsh dhasjdhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakj hdkjahsjkdhah hasjhd jahsdhj kahjsdhjashjdhajshd ahsdhajkshdakjh dahsdhkajshd hasjdhahsk dhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahs  jkdhah hasjhd jahsdhj kahjsdhjashjdhaj shdahsdhajkshdakjhd ahsdhkajs hdhasjdhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjda kjhdkjahsjkd hah hasjhd jahsdhj kahjsdhj ashjdhajshdahs dhajkshd akjhdahsdh kajshdhasjd hahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka askjdakjhdkjahsjkdhah hasjhd jahsdhj kahjsdhja shjdhajshdah sdhajks hdakjhdahs dhkajshdhasj  dhahskdhakjshdasd hasjkh jkadhsjkdhjk ahsdha jkhsd hajhdk ahsjdha kdsakhaksdhjahs kjhdaj hdajh jdkahsj kdaksadjkshd jka", date: "19.10.1996")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = UIColor(red: 0.2196, green: 0.2588, blue: 0.3255, alpha: 1.0)
        self.tableView.tableHeaderView = nil
        self.tableView.dataSource = self
        
        
        let profileBtn = UIButton(type: .custom)
        //profileBtn.setTitle("Hello", for: .normal)
        profileBtn.setImage(UIImage(named: "profile"), for: .normal)
        profileBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        profileBtn.addTarget(self, action: #selector(profilePage), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: profileBtn)
        
        self.navigationItem.setRightBarButtonItems([item1], animated: true)
    }
    
    @objc func profilePage(sender: UITapGestureRecognizer) {
        navigationController?.pushViewController(ProfileViewController(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return test.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsTableViewCell
        cell.setTitle(t: test[indexPath.row].Title)
        cell.setDate(d: test[indexPath.row].Date)
        cell.setImage(i: test[indexPath.row].Image)
        cell.backgroundColor = UIColor(red: 0.3961, green: 0.8431, blue: 0.6824, alpha: 1.0)
        
        let colorView = UIView()
        colorView.backgroundColor = UIColor(red: 0.3961, green: 0.8431, blue: 0.6824, alpha: 1.0)
        cell.selectedBackgroundView = colorView
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let modalViewController = ModalViewController()
        modalViewController.newsImage.image = UIImage(named: test[indexPath.row].Image)
        modalViewController.newsTitle.text = test[indexPath.row].Title
        modalViewController.newsContent.text = test[indexPath.row].Content
        modalViewController.modalPresentationStyle = .custom
        modalViewController.transitioningDelegate = DeckTransitioningDelegate()

        //modalViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        self.present(modalViewController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}
