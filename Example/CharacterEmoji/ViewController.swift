//
//  ViewController.swift
//  CharacterEmoji
//
//  Created by p5p50p5p@gmail.com on 01/24/2019.
//  Copyright (c) 2019 p5p50p5p@gmail.com. All rights reserved.
//

import UIKit
import CharacterEmoji
class ViewController: UIViewController {
    
    let user = CharacterEmoji()
    let mother = AlertViewController()
    
    let aa = "😈😔😔😐😓🚚🚏🚏😍🚎😊😃😎😑😁😐😐🚎😂😅😔🚓🚖🚕😁😐😐🚑🚒🚓🚔🚕🚖🚎😃😏😍🚟😔😏😋😅😎🚝😊😇🚙😎😏🚒😒😃😙😎😎"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bb = user.characterToString(str: aa)
        
        let cc = user.replacingString(message: aa)
        
        let dd = mother.alertView(message: "hahaha eat pu pu")
        dd
        print("\(bb)")
        print("\(cc)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

