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
  
    @IBOutlet weak var lovedButton: UIButton!
    @IBOutlet weak var happyButton: UIButton!
    @IBOutlet weak var nervousButton: UIButton!
    @IBOutlet weak var angryButton: UIButton!
    @IBOutlet weak var tiredButton: UIButton!
    @IBOutlet weak var sadButton: UIButton!
    override func viewDidLoad() {
        Journal.current?.currentPage = 24
        
    }
    
    @IBAction func LovedButton(_ sender: Any) {
        guard let currentJournal = Journal.current else {return} // safely unwrap journal
        currentJournal.postLoved = !currentJournal.postLoved
        lovedButton.alpha = currentJournal.postLoved ? 1.0 : 0.5 //set not transparent if true, set half transparent if false
        
    }
    
    @IBAction func HappyButton(_ sender: Any) {
        guard let currentJournal = Journal.current else {return}
        currentJournal.postHappy = !currentJournal.postHappy
        happyButton.alpha = currentJournal.postHappy ? 1.0 : 0.5
    }
    
    @IBAction func NervousButton(_ sender: Any) {
        guard let currentJournal = Journal.current else {return}
        currentJournal.postNervous = !currentJournal.postNervous
        nervousButton.alpha = currentJournal.postNervous ? 1.0 : 0.5
    }
    
    @IBAction func AngryButton(_ sender: Any) {
        guard let currentJournal = Journal.current else {return}
        currentJournal.postAngry = !currentJournal.postAngry
        angryButton.alpha = currentJournal.postAngry ? 1.0 : 0.5
    }
    
    
    @IBAction func TiredButton(_ sender: Any) {
        guard let currentJournal = Journal.current else {return}
        currentJournal.postTired = !currentJournal.postTired
        tiredButton.alpha = currentJournal.postTired ? 1.0 : 0.5
    }
    
    @IBAction func SadButton(_ sender: Any) {
        guard let currentJournal = Journal.current else {return}
        currentJournal.postSad = !currentJournal.postSad
        sadButton.alpha = currentJournal.postSad ? 1.0 : 0.5
    }

    
    // Journal.current?.postEmoji = (Journal.current?.postEmoji)! + ", sad"
}
