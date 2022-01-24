//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Danny Park on 1/23/22. UPDATE
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🥲 viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's you!"
        
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😂 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
}

