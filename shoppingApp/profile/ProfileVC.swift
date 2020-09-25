//
//  ProfileVC.swift
//  shoppingApp
//
//  Created by Imran Sifat on 14/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class ProfileVC: UITableViewController {
    let rowNumber = [1,6,5,3]
    let orderCellRowName = ["Orders", "Unpaid", "To be shipped", "Shipped","To be reviewed", "In Dispute"]
    let walletCellRowsName = ["Wallet", "Shipping Address", "Invite Friends To Get US $5", "Redeem Invite Code", "Questions & Answers" ]
    let walletCellRowsIcon: [UIImage] = [#imageLiteral(resourceName: "wallet"), #imageLiteral(resourceName: "gps icon"), #imageLiteral(resourceName: "share"), #imageLiteral(resourceName: "redeem code icon"), #imageLiteral(resourceName: "question and answer icon")]
    let SettingsCellName = ["Settings", "App Seggestion", "Help Center" ]
    let SettingsCellIcon: [UIImage] = [#imageLiteral(resourceName: "settings"), #imageLiteral(resourceName: "suggestion"), #imageLiteral(resourceName: "help center")]

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        tableView.separatorStyle = .none
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows = rowNumber[section]
        return rows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileInfo", for: indexPath) as! profileInfo
            cell.backgroundColor = .clear
           tableView.rowHeight = 100
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell") as! OrderCell
            cell.backgroundColor = .clear
            if indexPath.row == 0{
                cell.rowName.font = UIFont.boldSystemFont(ofSize: 20)
                cell.orderIcon.image = #imageLiteral(resourceName: "purchase-order")
            }
            cell.rowName.text = orderCellRowName[indexPath.row]
            tableView.rowHeight = 44

            return cell
        }else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "walletCell") as! walletCell
            cell.icon.image = walletCellRowsIcon[indexPath.row]
            cell.cellName.text = walletCellRowsName[indexPath.row]
            tableView.rowHeight = 44
            cell.backgroundColor = .clear
            return cell
        }else if indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "walletCell") as! walletCell
            cell.icon.image = SettingsCellIcon[indexPath.row]
            cell.cellName.text = SettingsCellName[indexPath.row]
            tableView.rowHeight = 44
            cell.backgroundColor = .clear
            return cell
        }

        return UITableViewCell()
    }
    func registerCell(){
        tableView.register(profileInfo.self, forCellReuseIdentifier: "profileInfo")
        tableView.register(OrderCell.self, forCellReuseIdentifier: "OrderCell")
        tableView.register(walletCell.self, forCellReuseIdentifier: "walletCell")
    }

}


