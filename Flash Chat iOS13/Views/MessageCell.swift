//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Amr El-Fiqi on 15/04/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet var leftImageView: UIImageView!
    @IBOutlet var rightImageView: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var messageBubble: UIView!
    
    
    // MARK: - Class Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
