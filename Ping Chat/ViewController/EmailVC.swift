//
//  EmailVC.swift
//  Ping Chat
//
//  Created by Developer on 26/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields
class EmailVC: UIViewController {

    @IBOutlet weak var emailtextfield: MDCTextField!
    
    var userInfo = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailtextfield.getFont()
        emailtextfield.clearButton.tintColor = UIColor.clear
        self.hideKeyBoard()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addFriendVC = segue.destination as? AddFriendsVC {
            userInfo["email"] = emailtextfield.text
            addFriendVC.userInfo = userInfo
        }
    }

}
