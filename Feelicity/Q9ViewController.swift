//
//  Q9ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q9ViewController: UIViewController {
    
    @IBOutlet weak var text1: UITextView!
    @IBOutlet weak var text2: UITextView!
    override func viewDidLoad() {
        Journal.current?.currentPage = 13
        
    }
    
    @IBAction func submit(_ sender: Any) {
        
        Journal.current?.avoided = text1.text
        Journal.current?.prosCons = text2.text
        
    }
    
}
