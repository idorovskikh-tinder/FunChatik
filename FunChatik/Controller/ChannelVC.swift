//
//  ChannelVC.swift
//  FunChatik
//
//  Created by Natalia on 7/3/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make chat slide screen less to show more channel screen
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }



}
