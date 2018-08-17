//
//  Q3ViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q3ViewController: UIViewController {
    
    //Outlet for Question 1
    @IBOutlet weak var Q3TextBox: UITextView!
    
    //Outlet for Question 2
    @IBOutlet weak var Q3TextBox2: UITextView!
    
    
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 6
        ref = Database.database().reference()
    }
    
}
