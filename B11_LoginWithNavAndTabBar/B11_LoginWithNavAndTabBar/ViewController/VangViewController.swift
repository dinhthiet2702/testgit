//
//  VangViewController.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/15/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class VangViewController:TrongSuotNavBarViewController {
    let searchBar = UISearchBar()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatSearchBar()
        let segmentBarItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(back))
        navigationItem.rightBarButtonItem = segmentBarItem
        // Do any additional setup after loading the view.
    }
    
    @objc func back(){
        
    }

}
extension VangViewController:UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "CellSliderTableViewCell") as! CellSliderTableViewCell
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "iconTableViewCell") as! iconTableViewCell
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
                cell.pushView = {
                    let detailsPro = Main_StoryBroad.instantiateViewController(withIdentifier: "DetailsProductViewController") as! DetailsProductViewController
                    self.navigationController?.pushViewController(detailsPro, animated: true)
                }
                return cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 200
        case 1:
            return 150
        default:
            return UITableView.automaticDimension
        }
    }
    func creatSearchBar(){
        searchBar.placeholder = "Search"
        searchBar.delegate = self
        navigationItem.titleView = searchBar
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        searchBar.endEditing(true)
    }
}
