//
//  Q12ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q12ViewController: UIViewController {
    
    @IBOutlet weak var Yes: UISwitch!
    @IBOutlet weak var No: UISwitch!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 16
        
    }
    
    @IBAction func submit(_ sender: Any) {
        
        if Yes.isOn {
            Journal.current?.isExcludingInfoYes = true
        }
        else {
            Journal.current?.isExcludingInfoYes = false
        }
        if No.isOn {
            Journal.current?.isExcludingInfoNo = true
        }
        else {
            Journal.current?.isExcludingInfoNo = false
        }
    }
    
}
