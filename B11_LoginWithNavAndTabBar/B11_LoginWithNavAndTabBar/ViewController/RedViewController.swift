//
//  RedViewController.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/15/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func LogOut(_ sender: UIButton) {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let alert:UIAlertController = UIAlertController(title: "Log Out!", message: "Bạn có muốn đăng xuất ?", preferredStyle: UIAlertController.Style.alert)
                let yes:UIAlertAction = UIAlertAction(title: "Đăng Xuất", style: UIAlertAction.Style.destructive) { (_) in
                    appDelegate.LogOut()
                }
                let no:UIAlertAction = UIAlertAction(title: "Huỷ", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(yes)
                alert.addAction(no)
                present(alert, animated: true, completion: nil)
        
    }
    
}
