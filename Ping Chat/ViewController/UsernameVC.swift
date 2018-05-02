//
//  UsernameVC.swift
//  Ping Chat
//
//  Created by Developer on 26/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields

class UsernameVC: UIViewController {
@IBOutlet weak var usernametextfield: MDCTextField!
    
    var userInfo = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernametextfield.getFont()
        usernametextfield.clearButton.tintColor = UIColor.clear
        self.hideKeyBoard()
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let passwordVC = segue.destination as? PasswordVC {
            userInfo["username"] = usernametextfield.text
            passwordVC.userInfo = userInfo
        }
    }

}
