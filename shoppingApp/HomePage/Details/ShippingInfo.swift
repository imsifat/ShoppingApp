//
//  ShippingInfo.swift
//  shoppingApp
//
//  Created by Imran Sifat on 13/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class ShippingInfo: UITableViewCell {
    @IBOutlet weak var Shipping: UILabel!
    @IBOutlet weak var Location: UILabel!
    @IBOutlet weak var shippingCharge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class productPrice: UITableViewCell{
    @IBOutlet weak var price: UIButton!
    
}
