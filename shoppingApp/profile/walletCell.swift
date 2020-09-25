//
//  walletCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 14/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class walletCell: UITableViewCell {
    
    var icon : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        return image
    }()
    var cellName = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellConstraints()
        cellName.textColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    func cellConstraints(){
        addSubview(icon)
        addSubview(cellName)
        icon.translatesAutoresizingMaskIntoConstraints = false
        cellName.translatesAutoresizingMaskIntoConstraints = false
        icon.topAnchor.constraint(equalTo: topAnchor, constant: 2).isActive = true
        icon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 35).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 35).isActive = true
        cellName.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        cellName.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 10).isActive = true
    }
    
}
