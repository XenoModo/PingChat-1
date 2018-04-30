//
//  ConversationTableViewCell.swift
//  Ping Chat
//
//  Created by Jason Nguyen on 4/30/18.
//  Copyright © 2018 BetaMaju. All rights reserved.
//

import UIKit

class ConversationTableViewCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var notification: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
