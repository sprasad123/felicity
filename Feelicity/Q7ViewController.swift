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
        ref = Database.database().reference()
    }
    
    @IBAction func submit(_ sender: Any) {
        ref?.child("Journal").childByAutoId().setValue(["user" : Auth.auth().currentUser!.uid])
//        ref?.child("Users").child(user.uid.setValue(text1.text)
        ref?.child("BehaviorFeeling").childByAutoId().setValue(text2.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Journal.current.slider = slider.value to save
    }
}
