//
//  ChannelCell.swift
//  FunChatik
//
//  Created by Natalia on 7/15/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //set selected color for the background color channel
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    //set title name to channel
    func configureCell(channel : Channel) {
        let title = channel.channelTitle ?? "" //if you can't find channel name return empty string
        channelName.text = "#\(title)"
    }
}
