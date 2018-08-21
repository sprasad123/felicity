//
//  Q2ViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q2ViewController: UIViewController {
    
    //Outlet for Question 1
    @IBOutlet weak var Q2TextBox: UITextView!
    
    @IBAction func Submit(_ sender: Any) {
        Journal.current?.thoughtDescription1 = Q2TextBox.text
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 6
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
