//
//  DetailsVC.swift
//  shoppingApp
//
//  Created by Imran Sifat on 13/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.1215686275, blue: 0.1215686275, alpha: 1)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            //let cv = ImageCell()
            tableView.rowHeight = self.view.frame.height
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 5
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
            cell.backgroundColor = .clear
            tableView.rowHeight = 275
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "productInfo") as! productInfo
            cell.backgroundColor = .clear
            tableView.rowHeight = 243
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShippingInfo") as! ShippingInfo
            cell.backgroundColor = .clear
            tableView.rowHeight = 88
            return cell
        }else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "productPrice") as! productPrice
            cell.backgroundColor = .clear
            tableView.rowHeight = 56
            return cell
        }else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SimilarPostCell") as! SimilarPostCell
            cell.backgroundColor = .clear
            tableView.rowHeight = 196
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
