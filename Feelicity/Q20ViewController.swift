//
//  Q20ViewController.swift
//  Felicity
//
//  Created by Sonal Prasad on 8/23/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q20ViewController: UIViewController {
    
    @IBOutlet weak var Q1TextBox: UITextView!
    @IBOutlet weak var Q2TextBox: UITextView!
    @IBOutlet weak var Q3TextBox: UITextView!
    
    @IBAction func Submit(_ sender: Any) {
        Journal.current?.doneDifferently = Q1TextBox.text
        Journal.current?.whatHelped = Q2TextBox.text
        Journal.current?.whatDidnt = Q3TextBox.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 5
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
    }
    
}
