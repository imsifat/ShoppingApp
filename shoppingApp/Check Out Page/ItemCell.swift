//
//  ItemCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 9/8/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBAction func removeItem(_ sender: Any) {
    }
    
}
