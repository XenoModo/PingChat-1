//
//  ViewController.swift
//  Ping Chat
//
//  Created by Developer on 25/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import Firebase

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil {
            let storyboard = UIStoryboard(name: "Friends", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FriendListVC")
            self.present(vc, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

