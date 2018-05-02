//
//  AddFriendsVC.swift
//  Ping Chat
//
//  Created by Developer on 27/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit

class AddFriendsVC: UIViewController {
    
    var userInfo = [String: String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let birthdayVC = segue.destination as? BirthdayVC {
            birthdayVC.userInfo = userInfo
        }
    }

}
