//
//  ViewController.swift
//  XyloApp
//
//  Created by Cassia Franco on 11/11/20.
//  Copyright © 2020 Cassia Franco. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.2
        
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
}

