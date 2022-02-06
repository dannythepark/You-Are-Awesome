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
    var soundNumber = -1
    var totalNumberOfImages = 10
    var totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name) {
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
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat{
            newNumber = Int.random(in:0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You Are Great",
                        "You are Fantastic!",
                        "Fabulous? That's you!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "You've got the Design Skills of Jony Ive"]
        
        
        //Show a Message
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        //Show an Image
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "img\(imageNumber)")
        //Get a random number to use in our soundName File
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        playSound(name: "sound\(soundNumber)")

    }
}

