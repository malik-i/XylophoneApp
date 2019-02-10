//
//  ViewController.swift
//  Xylophone
//
//  Created by Malik Iscandari
//  Copyright © KilamDesignz. All rights reserved.
//

import UIKit
import AVFoundation // Audio Video

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName: String = " "
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"] // created a file array containg all the audio files

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1] // recall that each button has an associated interger tag, so we made use of the feature in this array!
        playSound()

    }
    
    func playSound(){
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName , withExtension: "wav") // creating a path to out file name
        
        do { // the the do is what you are trying to do
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{ // catch the action that occurs if an error occurs
            print(error)
        }
        
        audioPlayer.play() // this plays the audio
    }
  

}

