//
//  OrderCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 14/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {
    var rowName =  UILabel()
    var orderIcon = UIImageView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellConstraints()
        rowName.textColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    func cellConstraints(){
        addSubview(rowName)
        addSubview(orderIcon)
        orderIcon.translatesAutoresizingMaskIntoConstraints = false
        rowName.translatesAutoresizingMaskIntoConstraints = false
        orderIcon.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        orderIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        orderIcon.heightAnchor.constraint(equalToConstant: 35).isActive = true
        orderIcon.widthAnchor.constraint(equalToConstant: 35).isActive = true
        rowName.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        rowName.leadingAnchor.constraint(equalTo: orderIcon.trailingAnchor, constant: 10).isActive = true
    }
    
}
