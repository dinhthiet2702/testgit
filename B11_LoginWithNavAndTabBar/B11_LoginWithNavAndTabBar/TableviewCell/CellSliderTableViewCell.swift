//
//  CellSliderTableViewCell.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/28/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class CellSliderTableViewCell: UITableViewCell {
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    var arrImg:[String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        arrImg = ["h1", "h2", "h3", "h4"]
        pageControl.numberOfPages = arrImg.count
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
extension CellSliderTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControl.currentPage = indexPath.row
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellImg = collection.dequeueReusableCell(withReuseIdentifier: "CellImgCollectionViewCell", for: indexPath) as! CellImgCollectionViewCell
        cellImg.imgSlider.image = UIImage(named: arrImg[indexPath.row])
        return cellImg
    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let offSet = collection.contentOffset.x
//        let width = collection.frame.width
//        let scollCenter = width/2
//        pageControl.currentPage = Int(offSet + scollCenter) / Int(width)
//    }
    
}
