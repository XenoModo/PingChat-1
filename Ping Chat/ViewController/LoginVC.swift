//
//  LoginVC.swift
//  Ping Chat
//
//  Created by Developer on 27/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields

class LoginVC: UIViewController {

    @IBOutlet weak var loginusremail: MDCTextField!
    @IBOutlet weak var loginpass: MDCTextField!
    override func viewDidLoad() {
        
        self.hideKeyBoard()
        loginusremail.getFont()
        loginusremail.clearButton.tintColor = UIColor.clear
        loginpass.getFont()
        loginpass.clearButton.tintColor = UIColor.clear
    
        super.viewDidLoad()

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
