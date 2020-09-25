//
//  SimilarPostCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 13/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class SimilarPostCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 5
       }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "similarPostCollectionCell", for: indexPath) as! similarPostCollectionCell
        return cell
    }
}
class similarPostCollectionCell: UICollectionViewCell{
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
}
