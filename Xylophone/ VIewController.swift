//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"];
        let selectedSoundFileName : String = soundArray[sender.tag - 1];
        
        playSound(selectedSoundFileName);
        
    }
    
    func playSound(_ file: String) {
        let soundURL = Bundle.main.url(forResource: file, withExtension: "wav");
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!);
        } catch {
            print(error);
        }
        audioPlayer.play();
    }
    
}

