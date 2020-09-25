//
//  productInfo.swift
//  shoppingApp
//
//  Created by Imran Sifat on 13/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class productInfo: UITableViewCell {
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var LoveButton: UIButton!
    @IBOutlet weak var LoveCounter: UILabel!
    @IBOutlet weak var Details: UILabel!
    @IBOutlet weak var orderNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
