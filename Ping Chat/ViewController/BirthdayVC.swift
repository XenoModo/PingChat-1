//
//  BirthdayVC.swift
//  Ping Chat
//
//  Created by Developer on 27/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields
import Firebase

class BirthdayVC: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var birthdayTextField: MDCTextField!
    
    var userInfo = [String: String]()
    var ref: DatabaseReference! = Database.database().reference()
    
    @IBAction func register(_ sender: Any) {
        var details = [String: String]()
        details["firstName"] = userInfo["firstName"]
        details["lastName"] = userInfo["lastName"]
        details["photoUrl"] = userInfo["photoUrl"]
        details["username"] = userInfo["username"]
        details["birthday"] = birthdayTextField.text
        
        Auth.auth().createUser(withEmail: userInfo["email"]!, password: userInfo["password"]!, completion: { (user: User?, error) in
            if error == nil {
                self.ref.child("users").child((user?.uid)!).setValue(details)
                Auth.auth().signIn(withEmail: self.userInfo["email"]!, password: self.userInfo["password"]!)
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "FriendListVC")
                self.present(vc!, animated: true, completion: nil)
            }
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        datePicker.datePickerMode = UIDatePickerMode.date
        datePicker.setValue(UIColor.white, forKey: "textColor")
        datePicker.addTarget(self, action: #selector(BirthdayVC.datePickerValueChanged(sender:)), for: UIControlEvents.valueChanged)
        birthdayTextField.inputView = datePicker
        
        birthdayTextField.getFont()
        birthdayTextField.clearButton.tintColor = UIColor.clear
        self.hideKeyBoard()
        
    }
    
    @objc func datePickerValueChanged(sender: UIDatePicker){
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        birthdayTextField.text = formatter.string(from: sender.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var isAuth = false
        Auth.auth().addStateDidChangeListener { auth, user in
            if user != nil {
                isAuth = true
            }
        }
        return isAuth
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
