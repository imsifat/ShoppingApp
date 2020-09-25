//
//  BannerCell.swift
//  shoppingApp
//
//  Created by Imran Sifat on 17/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit
class BannerCell: UICollectionViewCell , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //                              varibales
    
    let bannerImage: [UIImage] = [#imageLiteral(resourceName: "banner5"), #imageLiteral(resourceName: "banner6"), #imageLiteral(resourceName: "banner1"), #imageLiteral(resourceName: "banner2"), #imageLiteral(resourceName: "banner3"), #imageLiteral(resourceName: "banner4")]
    let pageView = UIPageControl()
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.isPagingEnabled = true
        collection.isScrollEnabled = false
        collection.showsVerticalScrollIndicator = false
        collection.showsHorizontalScrollIndicator = false
        collection.backgroundColor = .clear
        return collection
    }()
    var timer = Timer()
    var counter = 0
    
    //                              Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.delegate = self
        collectionView.dataSource = self
        //self.selectionStyle = .none
        collectionView.register(bannerCollectionCell.self, forCellWithReuseIdentifier: "bannerCollectionCell")
        collectionConstraints()
        pageView.numberOfPages = bannerImage.count
        pageView.currentPage = 0
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
    }
    
    
    @objc func changeImage(){
        if counter < bannerImage.count{
            let index = IndexPath.init(item: counter, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageView.currentPage = counter
            counter += 1
        }else{
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageView.currentPage = counter
            counter = 1
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //           This all functions are for collection view
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerImage.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCollectionCell", for: indexPath) as! bannerCollectionCell
        cell.banner.image = bannerImage[indexPath.row]
           return cell
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width, height: self.frame.height)
    }
    func collectionConstraints(){
        addSubview(collectionView)
        addSubview(pageView)
        pageView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pageView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: -50).isActive = true
        pageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}

//          this is the class for collectionview cell

class bannerCollectionCell: UICollectionViewCell{
    let banner: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "banner1")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        return image
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        bannerConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func bannerConstraints(){
        addSubview(banner)
        banner.translatesAutoresizingMaskIntoConstraints = false
        banner.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        banner.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        banner.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        banner.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
}

