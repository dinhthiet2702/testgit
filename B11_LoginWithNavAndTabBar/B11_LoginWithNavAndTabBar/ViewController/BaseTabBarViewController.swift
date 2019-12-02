//
//  BaseTabBarViewController.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/15/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBar()
        // Do any additional setup after loading the view.
    }
    //tao func setup tabbar
    func setupTabBar() {
        // xac dinh viewcontroller
        let VangVC = Main_StoryBroad.instantiateViewController(withIdentifier: "VangViewController") as! VangViewController
        //setup item tabbar
        VangVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1000)
        //them vao navigation controllers
        let navVangVC = BaseNavigationViewController(rootViewController: VangVC)
        
        // xac dinh viewcontroller
        let RedVC = Main_StoryBroad.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
        //setup item tabbar
        RedVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2000)
        //them vao navigation controllers
        let navRedVC = BaseNavigationViewController(rootViewController: RedVC)
        
        
        //them vao tabbar controllers
        self.viewControllers = [navVangVC, navRedVC]
    }
    
    

}
