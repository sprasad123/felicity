//
//  Q5ViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q5ViewController: UIViewController {
    
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 9
        ref = Database.database().reference()
    }
    
}
