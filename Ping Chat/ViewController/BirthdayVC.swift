//
//  BirthdayVC.swift
//  Ping Chat
//
//  Created by Developer on 27/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields
class BirthdayVC: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var birthdayTextField: MDCTextField!
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
