//
//  ChannelVC.swift
//  FunChatik
//
//  Created by Natalia on 7/3/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var loginButton: UIButton!
    //give us possible to come back to the channel screen, when closeButtom pressed in Create account screen
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make chat slide screen less to show more channel screen
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }


    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
