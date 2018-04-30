//
//  FriendListVC.swift
//  Ping Chat
//
//  Created by Jason Nguyen on 4/30/18.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit

class FriendListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var conversationTable: UITableView!

    var items = [["name": "Gwyneth Paltrow", "message": "Hi Adam, I'm going to show you something. See you soon.", "time": "15:10", "notification": 3], ["name": "Leo Dicaprio", "message": "This is a message from Leonardo DiCaprio", "time": "13:19", "notification": 2]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversationTable.delegate = self
        conversationTable.dataSource = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Conversation View Cell", for: indexPath) as! ConversationTableViewCell
        
        cell.name.text = (self.items[indexPath.row]["name"] as? String)?.uppercased()
        cell.message.text = self.items[indexPath.row]["message"] as? String
        cell.time.text = self.items[indexPath.row]["time"] as? String
        cell.notification.text = String(self.items[indexPath.row]["notification"] as! Int)
        
        return cell
    }

}
