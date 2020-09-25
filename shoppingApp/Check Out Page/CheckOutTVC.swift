//
//  CheckOutTVC.swift
//  shoppingApp
//
//  Created by Imran Sifat on 9/8/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class CheckOutTVC: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if row == indexPath.first {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Counter", for: indexPath) as! Counter            
            return cell
        }else if row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
            
            return cell
        }else if row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PriceCell", for: indexPath) as! PriceCell
            
            return cell
        }else if row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TotalPriceCell", for: indexPath) as! TotalPriceCell
            
            return cell
        }else if row == indexPath.last{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CheckoutCell", for: indexPath) as! CheckoutCell
            
            return cell
        }
        return UITableViewCell()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

}
