//
//  ProductTableViewCell.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/30/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var collectProduct: UICollectionView!
    @IBOutlet weak var heightclProduct: NSLayoutConstraint!
    var arrProduct:[Product] = []
    var pushView:(()->Void)! = nil
    override func awakeFromNib() {
        super.awakeFromNib()
        arrProduct = [
            Product(imgpro: "iphoneXSmax", price: 600000),
            Product(imgpro: "iphoneXS", price: 1200000),
            Product(imgpro: "iphoneXR", price: 3000000),
            Product(imgpro: "iphoneX", price: 700000),
            Product(imgpro: "iphone11promax", price: 6000000),
            Product(imgpro: "iphone11pro", price: 6000000),
            Product(imgpro: "iphone11", price: 6000000),
            Product(imgpro: "iphone8", price: 6000000),
            Product(imgpro: "iphone7plus", price: 6000000)
        ]
        heightclProduct.constant = collectProduct.collectionViewLayout.collectionViewContentSize.height
        collectProduct.layoutIfNeeded()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension ProductTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellProduct = collectProduct.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cellProduct.imgProduct.image = UIImage(named: arrProduct[indexPath.row].imgpro)
        cellProduct.lbPrice.text = String(arrProduct[indexPath.row].price)
        return cellProduct
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        if pushView != nil{
            pushView()
        }
    }
    
}
struct Product {
    var imgpro:String
    var price:Int
}
