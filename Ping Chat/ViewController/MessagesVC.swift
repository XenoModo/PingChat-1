//
//  MessagesVC.swift
//  Ping Chat
//
//  Created by Jason Nguyen on 4/30/18.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit

class MessagesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var messagesTable: UITableView!
    
    var messages = [["Owner": "Sender", "Message": "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu."], ["Owner": "Sender", "Message": "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu."], ["Owner": "Receiver", "Message": "This is a big big test message that should use two lines"]]
    
    // Declare variables
    let barHeight: CGFloat = 60
    
    //MARK: Methods
    func customization() {
        messagesTable.delegate = self
        messagesTable.dataSource = self
        
        self.messagesTable.estimatedRowHeight = self.barHeight
        self.messagesTable.rowHeight = UITableViewAutomaticDimension
        self.messagesTable.contentInset.bottom = self.barHeight
        self.messagesTable.scrollIndicatorInsets.bottom = self.barHeight
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customization()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if tableView.isDragging {
            cell.transform = CGAffineTransform.init(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 0.3, animations: {
                cell.transform = CGAffineTransform.identity
            })
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        if message["Owner"] == "Sender" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Sender", for: indexPath) as! SenderViewCell
            cell.clearCellData()
            cell.message.text = message["Message"]
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Receiver", for: indexPath) as! ReceiverViewCell
            cell.clearCellData()
            cell.message.text = message["Message"]
            return cell
        }
    }

}
