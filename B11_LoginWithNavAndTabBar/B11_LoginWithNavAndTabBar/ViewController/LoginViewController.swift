//
//  LoginViewController.swift
//  B11_LoginWithNavAndTabBar
//
//  Created by thiet on 11/15/19.
//  Copyright © 2019 thiet. All rights reserved.
//

import UIKit

class LoginViewController: TrongSuotNavBarViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Login(_ sender: UIButton) {
        //sceneDelegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // goji func login
        appDelegate.Login()
    }
    @IBAction func Register(_ sender: UIButton) {
        let RegVC = Main_StoryBroad.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(RegVC, animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
