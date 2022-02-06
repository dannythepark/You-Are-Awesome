//
//  ViewController.swift
//  You Are Awesome
//  Directory Update ////////
//
//  Created by Danny Park on 1/23/22. UPDATE
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var totalNumberOfImages = 10
    var audioPlayer: AVAudioPlayer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You Are Great",
                        "You are Fantastic!",
                        "Fabulous? That's you!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "You've got the Design Skills of Jony Ive"]
        
        var newMessageNumber: Int
        repeat{
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
                    
        var newImageNumber: Int
                    repeat{
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "img\(imageNumber)")
                    
                    
        if let sound = NSDataAsset(name: "sound0") {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("😡ERROR: \(error.localizedDescription) Could not initalize AVAudioPlayer Object.")
            }
           
            
        } else {
            print("😡ERROR: Could not read data from file sound0")
        }
                    
                    
                    
                    
                    
        
    }
}

