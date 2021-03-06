//
//  PasswordVC.swift
//  Ping Chat
//
//  Created by Developer on 27/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields
class PasswordVC: UIViewController {

    @IBOutlet weak var passwordtextfield: MDCTextField!
    
    var userInfo = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordtextfield.getFont()
        passwordtextfield.clearButton.tintColor = UIColor.clear
        self.hideKeyBoard()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let emailVC = segue.destination as? EmailVC {
            userInfo["password"] = passwordtextfield.text
            emailVC.userInfo = userInfo
        }
    }

}
