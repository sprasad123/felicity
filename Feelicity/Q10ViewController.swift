//
//  Q10ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q10ViewController: UIViewController {
    
    @IBOutlet weak var thoughtText: UITextField!
    @IBOutlet weak var effectText: UITextView!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 14
        
    }
    
    @IBAction func submit(_ sender: Any) {
        
        Journal.current?.thoughtAction = thoughtText.text
        Journal.current?.effect = effectText.text
        
    }
    
}
