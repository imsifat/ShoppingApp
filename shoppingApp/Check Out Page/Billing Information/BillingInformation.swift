//
//  BillingInformation.swift
//  shoppingApp
//
//  Created by Imran Sifat on 19/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class BillingInformation: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 5
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "billingTitleCell") as! billingTitleCell
            tableView.rowHeight = 70
            return cell
        } else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NumberOfItemsCell") as! NumberOfItemsCell
            tableView.rowHeight = 407
            return cell
        } else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cartDetailCell") as! cartDetailCell
            tableView.rowHeight = 124
            return cell
        } else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cartTotalCell") as! cartTotalCell
            tableView.rowHeight = 73
            return cell
        } else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "submitButtonCell") as! submitButtonCell
            tableView.rowHeight = 65
            return cell
        }
        return UITableViewCell()
       }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
