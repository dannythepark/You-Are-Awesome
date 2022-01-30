//
//  ViewController.swift
//  You Are Awesome
//  Directory Update /////////////
//
//  Created by Danny Park on 1/23/22. UPDATE
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😂 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
        imageView.image = UIImage(named: "img0")
    }
}

