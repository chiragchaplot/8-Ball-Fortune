//
//  ViewController.swift
//  8 Ball Fortune
//
//  Created by Chirag Chaplot on 5/8/20.
//  Copyright © 2020 ChazzIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Eight Ball Array
    let eightBallImages = ["ball1","ball2","ball3","ball4","ball5"]

    //Variable to play with
    var randomImage: Int = 0
    
    //Dice Image
    @IBOutlet weak var eightBallImage: UIImageView!
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func generateRandomAnswer ()
    {
        randomImage = Int(arc4random_uniform(5))
        
        print(randomImage)
        
        eightBallImage.image = UIImage(named: eightBallImages[randomImage])
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        generateRandomAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            generateRandomAnswer()
        }
    }
}

