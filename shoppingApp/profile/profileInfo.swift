//
//  profileInfo.swift
//  shoppingApp
//
//  Created by Imran Sifat on 14/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class profileInfo: UITableViewCell{
    let userName: UILabel = {
       let label = UILabel()
        label.text = "MD. Imran Hossain"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    let memberType: UILabel = {
       let label = UILabel()
        label.text = "👑 Gold Member "
        label.textColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        return label
    }()
    let profilePicture: UIImageView = {
       let image = UIImageView()
        image.image = #imageLiteral(resourceName: "51286700_2288291451203167_3359567949152124928_o")
        image.clipsToBounds = true
        image.layer.cornerRadius = 45
        image.contentMode = .scaleAspectFill
        return image
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        profileConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func profileConstraints(){
        addSubview(userName)
        addSubview(memberType)
        addSubview(profilePicture)
        userName.translatesAutoresizingMaskIntoConstraints = false
        memberType.translatesAutoresizingMaskIntoConstraints = false
        profilePicture.translatesAutoresizingMaskIntoConstraints = false
        userName.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        userName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        memberType.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 5).isActive = true
        memberType.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        profilePicture.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        profilePicture.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
         profilePicture.heightAnchor.constraint(lessThanOrEqualToConstant: 90).isActive = true
        profilePicture.widthAnchor.constraint(lessThanOrEqualToConstant: 90).isActive = true
    }
    
}
