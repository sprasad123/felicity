//
//  Q16ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q16ViewController: UIViewController {
    
    
    @IBOutlet weak var beliefSlider: UISlider!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 20
        
    }
    
    @IBAction func submit(_ sender: Any) {
        
        Journal.current?.believePreviousThought = Int(beliefSlider.value)
    }
    
}
