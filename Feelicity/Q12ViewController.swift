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
    @IBOutlet weak var textBox: UITextView!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 16
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
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
        Journal.current?.excludedInfo = textBox.text
    }
    
}
