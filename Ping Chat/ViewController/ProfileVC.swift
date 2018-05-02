//
//  ProfileVC.swift
//  Ping Chat
//
//  Created by Developer on 26/04/2018.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit
extension UIImageView {
    
    func circleImage(){
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}

class ProfileVC: UIViewController {
    
    @IBOutlet weak var profilePic: UIImageView!
    
    var userInfo = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       profilePic.circleImage()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let usernameVC = segue.destination as? UsernameVC {
            userInfo["photoUrl"] = "http://example.com"
            usernameVC.userInfo = userInfo
        }
    }

}
