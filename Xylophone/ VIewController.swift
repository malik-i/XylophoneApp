//
//  ViewController.swift
//  Xylophone
//
//  Created by Malik Iscandari
//  Copyright © KilamDesignz. All rights reserved.
//

import UIKit
import AVFoundation // Audio Video

class ViewController: UIViewController{
    
    
    var player : AVAudioPlayer? // player functiom

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")! // this the path to our audio file
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as Error{
            print(error.localizedDescription)
        }
        
        
        
        
    }
    
  

}

