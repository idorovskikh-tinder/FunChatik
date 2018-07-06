//
//  CreateAccountVC.swift
//  FunChatik
//
//  Created by Natalia on 7/5/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //back us to main page
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
