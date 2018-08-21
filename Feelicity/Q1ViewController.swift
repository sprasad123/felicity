//
//  Q1ViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q1ViewController: UIViewController {
    
    //Outlets for Question 1 go here
    @IBOutlet weak var YesSwitch: UISwitch!
    @IBOutlet weak var NoSwitch: UISwitch!
    
    //Question 2 on Q1 page
    @IBOutlet weak var Q1TextBox: UITextView!
    
    @IBAction func submit(_ sender: Any){
        Journal.current?.isFeelingNegativeEmotionsYes =
            YesSwitch.isOn ?
            true: false
        Journal.current?.isFeelingNegativeEmotionsNo =
            NoSwitch.isOn ?
            true: false
        Journal.current?.situationDescription2 = Q1TextBox.text
        
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
