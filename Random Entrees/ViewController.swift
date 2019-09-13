//
//  ViewController.swift
//  Random Entrees
//
//  Created by Jared Spears on 9/5/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var viewer: UIImageView!
    
    var index = -1
    var newIndex = -1
    var randomStart = Int.random(in: 0...3)
    var entrees = ["burger",
                   "chicken strips",
                   "Chipotle",
                   "waffles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {

        if randomStart > entrees.count-1 {
            randomStart = 0
        }
        label.text = entrees[randomStart]
        viewer.image = UIImage(named: "img\(randomStart)")
         randomStart += 1
        
//        repeat {
//            newIndex = Int.random(in: 0..<entrees.count)
//        } while index == newIndex
//        index = newIndex
//        label.text = entrees[index]
//        viewer.image = UIImage(named: "img\(index)")
//    }
    
}

}

