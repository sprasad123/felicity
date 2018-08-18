//
//  Q11ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q11ViewController: UIViewController {
    
    @IBOutlet weak var isFactual: UISwitch!
    
    @IBOutlet weak var isExaggeration: UISwitch!
    override func viewDidLoad() {
        Journal.current?.currentPage = 15
        
    }
    
    
    @IBAction func submit(_ sender: Any) {
        
        if isFactual.isOn {
        Journal.current?.factual = true
        }
        else {
            Journal.current?.factual = false
        }
       
        if isFactual.isOn {
            Journal.current?.factual = true
        }
        else {
            Journal.current?.factual = false
        }
        
        if isExaggeration.isOn {
            Journal.current?.exaggeration = true
        }
        else {
            Journal.current?.exaggeration = false
        }
    }
    
}
