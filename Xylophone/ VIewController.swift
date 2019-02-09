//
//  ViewController.swift
//  Xylophone
//
//  Created by Malik Iscandari
//  Copyright © KilamDesignz. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        if(sender.tag == 1){ // sender  is the button that is being pressed
            print("play middle C")
        } else if (sender.tag == 2){
            print("Play D note")
        }
        
        
    }
    
  

}

