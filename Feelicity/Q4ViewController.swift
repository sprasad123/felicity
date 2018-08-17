//
//  Q4ViewController.swift
//  Feelicity
//
//  Created by Sharan Kaur on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q4ViewController: UIViewController {
    
    //Outlet for Question 1
    @IBOutlet weak var AngerButton: UIButton!
    @IBOutlet weak var EmptinessButton: UIButton!
    @IBOutlet weak var GuiltButton: UIButton!
    @IBOutlet weak var ShameButton: UIButton!
    @IBOutlet weak var LethargicButton: UIButton!
    @IBOutlet weak var HopelessnessButton: UIButton!
    @IBOutlet weak var WorthlessnessButton: UIButton!
    @IBOutlet weak var FrustrationButton: UIButton!
    @IBOutlet weak var IrritationButton: UIButton!
    @IBOutlet weak var VulnerableButton: UIButton!
    @IBOutlet weak var SensitiveButton: UIButton!
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 7
        ref = Database.database().reference()
    }
    
}

