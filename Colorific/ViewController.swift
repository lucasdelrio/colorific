//
//  ViewController.swift
//  Colorific
//
//  Created by Lucas Del Rio on 1/7/16.
//  Copyright © 2016 Lucas Del Rio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.layer.cornerRadius = 5.0
        colorLabel.layer.masksToBounds = true
        colorLabel.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.4)
    }
    
    @IBAction func changeColor(sender: UIButton) {
        let r = CGFloat(arc4random() % 250)
        let g = CGFloat(arc4random() % 250)
        let b = CGFloat(arc4random() % 250)
    
        let color = UIColor(red: (r/250.0), green: (g/250.0), blue: (b/250.0), alpha: 1.0)
        
        view.backgroundColor = color
        colorLabel.text = "R:\(Int(r)) G:\(Int(g)) B:\(Int(b))"
    }


}

