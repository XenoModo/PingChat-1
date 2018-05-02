//
//  NameVC.swift
//  Ping Chat
//
//  Created by Developer on 25/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields

//font for textbox
extension UITextField {
    
    func getFont(){
    self.textColor = UIColor.white
    self.font = UIFont(name: (self.font?.fontName)!, size: 17)
    }
    
}
//keyboard dismiss
extension UIViewController {
    func hideKeyBoard(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}


class NameVC: UIViewController, UITextFieldDelegate{
  
    @IBOutlet weak var ftextField: MDCTextField!
    @IBOutlet weak var ltextfield: MDCTextField!
    var activeTextField : UITextField!
    
    var userInfo = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        
        self.hideKeyBoard()
        ftextField.getFont()
        ftextField.clearButton.tintColor = UIColor.clear
        ltextfield.getFont()
        ltextfield.clearButton.tintColor = UIColor.clear
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if ((ftextField.text?.isEmpty)! || (ltextfield.text?.isEmpty)!) {
            return false
        }
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileVC = segue.destination as? ProfileVC {
            userInfo["firstName"] = ftextField.text
            userInfo["lastName"] = ltextfield.text
            profileVC.userInfo = userInfo
        }
    }
    
    
    
}
