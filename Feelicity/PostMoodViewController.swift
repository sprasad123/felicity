//
//  PostMoodViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PostMoodViewController: UIViewController {
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 24
        
    }
    
    @IBAction func LovedButton(_ sender: Any) {
        Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", loved"
    }
    
    @IBAction func HappyButton(_ sender: Any) {
        Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", happy"
    }
    
    @IBAction func NervousButton(_ sender: Any) {
        Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", nervous"
    }
    
    @IBAction func AngryButton(_ sender: Any) {
        Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", angry"
    }
    
    
    @IBAction func TiredButton(_ sender: Any) {
        Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", tired"
    }
    
    @IBAction func SadButton(_ sender: Any) {
        Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", sad"
    }
}
