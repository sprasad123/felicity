//
//  PreMoodViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PreMoodViewController: UIViewController {
    @IBOutlet weak var PreMoodSlider: UISlider!
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 1
        ref = Database.database().reference()
    }
    
}
