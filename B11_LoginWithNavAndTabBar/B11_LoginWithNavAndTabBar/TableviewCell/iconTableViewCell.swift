//
//  iconTableViewCell.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/28/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class iconTableViewCell: UITableViewCell {

    @IBOutlet weak var iconCollection: UICollectionView!
    var arrIcon:[String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        arrIcon = ["cloud","house","map","settings"]
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension iconTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrIcon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellicon = iconCollection.dequeueReusableCell(withReuseIdentifier: "iconCollectionViewCell", for: indexPath) as! iconCollectionViewCell
        cellicon.btnCell.setImage(UIImage(named: arrIcon[indexPath.row]), for: .normal)
        return cellicon
    }
    
}
