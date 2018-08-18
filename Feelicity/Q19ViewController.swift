//
//  Q19ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Q19ViewController: UIViewController {
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 23
        
        guard let currentJournal = Journal.current else {return}
        
        if currentJournal.feelsAngerPost {
            // insert new slider
            let slider1 = UISlider(frame:CGRect(x: 20, y: 60, width: 322, height: 20))
            slider1.minimumValue = 0
            slider1.maximumValue = 100
            slider1.isContinuous = false
            slider1.value = 50
            self.view.addSubview(slider1)
            // hook it up as an IBOutlet to save it's value in variable
        }
    }
    
}
