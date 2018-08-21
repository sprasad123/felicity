//
//  Q7ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q7ViewController: UIViewController {
    
    @IBOutlet weak var text1: UITextView!
    @IBOutlet weak var text2: UITextView!
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 11
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
        
        Journal.current?.behavior = text1.text
        Journal.current?.behaviorInfluence = text2.text
        
    }
    
}
