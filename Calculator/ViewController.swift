//
//  ViewController.swift
//  Calculator
//
//  Created by Shengkun Wei on 10/27/16.
//  Copyright © 2016 Shengkun Wei. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        
        let soundUrl = URL(fileURLWithPath: path!)
        
        do {
            btnSound = try AVAudioPlayer(contentsOf: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    
    }

    func playSound() {
        if btnSound.isPlaying {
            btnSound.stop()
        }
        btnSound.play()
        
    }
    
    @IBAction func numBtnPressed(sender: UIButton) {
        playSound()
    }


}

