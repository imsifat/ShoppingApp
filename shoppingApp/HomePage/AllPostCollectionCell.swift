//
//  AllPostCollectionCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 29/7/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class AllPostCollectionCell: UICollectionViewCell {
    let postImage : UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "jacket6")
        image.layer.cornerRadius = 5
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    let productName : UILabel = {
        let label = UILabel()
        label.text = "Black men winter warm camouflage lamb woolen casual jacket men fur collar plush faux leather jacket coat European style F7146"
        label.font = label.font.withSize(12)
        label.numberOfLines = 2
        label.textColor = .white
        //label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    let price : UILabel = {
        let label = UILabel()
        let number = Int.random(in: 50...500)
        label.text = "$\(number)"
        //label.font = label.font.withSize(25)
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .systemRed
        return label
    }()
    
    let orderNumber : UILabel = {
        let label = UILabel()
        let number = Int.random(in: 0...500)
        label.font = label.font.withSize(10)
        label.text = "\(number) Order"
        label.textColor = .white
        return label
    }()
    let stackView : UIStackView = {
       let stack = UIStackView()
        //stack.alignment = .fill
        stack.distribution = .fillEqually
        //stack.spacing = 5
        stack.axis = .vertical
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        postConstraints()
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func postConstraints(){
        addSubview(postImage)
        addSubview(stackView)
        
        stackView.addArrangedSubview(productName)
        stackView.addArrangedSubview(price)
        stackView.addArrangedSubview(orderNumber)
        
        
        postImage.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        postImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        postImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        postImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        postImage.heightAnchor.constraint(equalToConstant: self.frame.height / 1.5).isActive = true
        postImage.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -10).isActive = true
        
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
    }
    
}
