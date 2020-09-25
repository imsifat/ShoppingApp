//
//  ImageCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 13/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.isPagingEnabled = true
        collection.showsHorizontalScrollIndicator = false
        return collection
    }()
    let productImage: [UIImage] = [#imageLiteral(resourceName: "jacket6"), #imageLiteral(resourceName: "jacket5"), #imageLiteral(resourceName: "jacket3"), #imageLiteral(resourceName: "jacket4"), #imageLiteral(resourceName: "jacket2")]
    var counter: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        label.textAlignment = .center
        //label.alpha = 1
        label.textColor = .white
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DetailsCollectionCell.self, forCellWithReuseIdentifier: "DetailsCollectionCell")
        collectionViewConstraints()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productImage.count
       }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailsCollectionCell", for: indexPath) as! DetailsCollectionCell
        cell.image.image = productImage[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let counterValue = "\(indexPath.row + 1)/\(productImage.count)"
        counter.text = counterValue
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width, height: self.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionViewConstraints(){
        addSubview(collectionView)
        addSubview(counter)
        counter.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        counter.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: -50).isActive = true
        counter.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        counter.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
class DetailsCollectionCell: UICollectionViewCell{
    let image = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func imageConstraints(){
        addSubview(image)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
   }
