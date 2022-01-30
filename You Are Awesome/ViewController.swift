//
//  ViewController.swift
//  You Are Awesome
//  Directory Update /////
//
//  Created by Danny Park on 1/23/22. UPDATE
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😂 The message button was pressed!")
        let awesomeMessage = "You are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You are Da Bomb!"
        if messageLabel.text == awesomeMessage{
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "img1")
        } else if messageLabel.text == greatMessage{
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "img2")
        }
        else{
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "img0")
        }
    }
}

