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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
