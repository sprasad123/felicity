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
    
    //Question 1 Outlet
    @IBOutlet weak var PreMoodSlider: UISlider!
    
    //Question 2 Outlets
    @IBOutlet weak var LovedButton: UIButton!
    @IBOutlet weak var HappyButton: UIButton!
    @IBOutlet weak var NervousButton: UIButton!
    @IBOutlet weak var AngryButton: UIButton!
    @IBOutlet weak var TiredButton: UIButton!
    @IBOutlet weak var SadButton: UIButton!
    
    @IBAction func lovedbutton(_ sender: UIButton) {
    }
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 4
        ref = Database.database().reference()
    }
    
}
