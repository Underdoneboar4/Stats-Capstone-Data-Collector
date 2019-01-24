//
//  ViewController.swift
//  Stats Capstone Data Collector
//
//  Created by 90304593 on 1/10/19.
//  Copyright © 2019 90304593. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TopLabel: UILabel!
    
    @IBOutlet weak var LeftButton: UIButton!
    @IBOutlet weak var RightButton: UIButton!
    @IBOutlet weak var EndButton: UIButton!
    @IBOutlet weak var Switch: UISwitch!
    
    var old = 0
    var new = 0
    var alreadyCountedOld = 0
    var alreadyCountedNew = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func LeftButtonPressed(_ sender: Any) {
        if (Switch.isOn){
            old = old + 1
        } else {
            alreadyCountedOld = alreadyCountedOld + 1
        }
    }
    @IBAction func RightButtonPressed(_ sender: Any) {
        if (Switch.isOn){
            new = new + 1
        } else {
            alreadyCountedNew = alreadyCountedNew + 1
        }
    }
    @IBAction func EndButtonPressed(_ sender: Any) {
        TopLabel.text = "Totals: Old " + String(old) + ", New " + String(new) + ", SwD Old " + String(alreadyCountedOld) + ", SwD New " + String(alreadyCountedNew)
    }
    
    @IBAction func BckButtonPressed(_ sender: Any) {
        TopLabel.text = "Which Commons do you go to for lunch?"
    }
    

}

