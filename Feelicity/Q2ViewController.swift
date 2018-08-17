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
    
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 5
        ref = Database.database().reference()
    }
    
}
