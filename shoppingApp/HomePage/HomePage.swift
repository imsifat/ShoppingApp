//
//  HomePage.swift
//  shoppingApp
//
//  Created by Imran Sifat on 20/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class HomePage: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let numberOfCell = [1,1,1,30]
    let layout = UICollectionViewFlowLayout()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        registerCell()
        layout.scrollDirection = .vertical
        collectionView.collectionViewLayout = layout
        collectionView.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.1215686275, blue: 0.1215686275, alpha: 1)
        navigationItem.title = "Shopping App"
        //tabBarController?.tabBar.barStyle = .black
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 3{
            performSegue(withIdentifier: "details", sender: self)
        }
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return numberOfCell.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return numberOfCell[section]
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
            //cell.backgroundColor = .white
            return cell
        }else if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategroyCVC", for: indexPath) as! CategroyCVC
            //cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            return cell
        }else if indexPath.section == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell", for: indexPath) as! HeaderCell
            cell.backgroundColor = .clear
            
            return cell
        }else if indexPath.section == 3{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllPostCollectionCell", for: indexPath) as! AllPostCollectionCell
            layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            layout.minimumInteritemSpacing = 0
            cell.backgroundColor = .clear
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1{
            return CGSize(width: view.frame.width, height: 200)
        }else if indexPath.section == 2{
            return CGSize(width: view.frame.width, height: 40)
        }else if indexPath.section == 3{
            return CGSize(width: (self.collectionView.frame.size.width - 30) / 2, height: self.collectionView.frame.size.height / 3)
        }
        return CGSize(width: view.frame.width, height: view.frame.height / 4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func registerCell(){
        collectionView.register(BannerCell.self, forCellWithReuseIdentifier: "BannerCell")
        collectionView.register(CategroyCVC.self, forCellWithReuseIdentifier: "CategroyCVC")
        collectionView.register(UINib(nibName: "CategroyCVC", bundle: nil), forCellWithReuseIdentifier: "CategroyCVC")
        collectionView.register(HeaderCell.self, forCellWithReuseIdentifier: "HeaderCell")
        collectionView.register(AllPostCollectionCell.self, forCellWithReuseIdentifier: "AllPostCollectionCell")
    }

}

class HeaderCell: UICollectionViewCell {
    let header : UILabel = {
        let label = UILabel()
        //label.font = label.font.withSize(25)
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Just For You"
        label.textColor = .white
        return label
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.topAnchor.constraint(equalTo: topAnchor).isActive = true
        header.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


