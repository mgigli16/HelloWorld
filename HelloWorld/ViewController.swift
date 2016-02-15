//
//  ViewController.swift
//  HelloWorld
//  test to make sure updating on dropbox
//  Created by Abby Oliver on 2/6/16.
//  Copyright © 2016 PLGroupProject. All rights reserved.
//

import UIKit
import AVFoundation //able to use speakers on iPhone

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    @IBOutlet var stopButton: UIButton!
   
    @IBOutlet var outputLabel: UILabel!
    
    @IBOutlet var adeleImage: UIImageView!
    
    @IBOutlet var plButton: UIButton!
    
    var ButtonURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hello2", ofType: "mp3")!)

    var ButtonAudioPlayer = AVAudioPlayer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do
        {
            try ButtonAudioPlayer = AVAudioPlayer(contentsOfURL: ButtonURL)
        }catch {
            print("Player not available")
        }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func helloWorldAction(button1: UIButton) {
        
        outputLabel.text = "Hello World! It's Me!"

        adeleImage.image = UIImage(named: "adelePic")
        
        ButtonAudioPlayer.play()
        
    }
    
    @IBAction func stopSong(sender: UIButton) {
        
        ButtonAudioPlayer.stop()
        
    }

    @IBAction func king(sender: AnyObject) {
        
        
        
    }
}

