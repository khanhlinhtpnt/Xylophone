//
//  ViewController.swift
//  Xylophone
//
//  Created by Linh Huynh on 12/31/17.
//  Copyright © 2017 Linh Huynh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    let arraySound = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(selectedSoundFile: arraySound[sender.tag - 1])
    }
    
    func playSound(selectedSoundFile: String){
        let soundURL = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav")
        do {
            try audioPlayer =  AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
    
    
}



