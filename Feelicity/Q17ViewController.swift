//
//  Q17ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q17ViewController: UIViewController {
    
    
    @IBOutlet weak var altview: UITextView!
    
    @IBOutlet weak var altbelief: UISlider!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 21
        
    }
    
    @IBAction func submit(_ sender: Any) {
        
        Journal.current?.alternativeView = altview.text
        Journal.current?.alternativeBelief = Int(altbelief.value)

        
    }
    
}
