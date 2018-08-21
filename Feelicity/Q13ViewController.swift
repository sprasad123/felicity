//
//  Q13ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q13ViewController: UIViewController {
    
    
    @IBOutlet weak var blackandwhite: UISwitch!
    
    @IBOutlet weak var overGeneralizing: UISwitch!
    
    @IBOutlet weak var selectiveabstraction: UISwitch!
    
    @IBOutlet weak var mindreading: UISwitch!
    
    @IBOutlet weak var Personalizing: UISwitch!
    
    @IBOutlet weak var Catastrophizing: UISwitch!
    
    @IBOutlet weak var should: UISwitch!
    
    @IBOutlet weak var Minimizing: UISwitch!
    
    @IBOutlet weak var none: UISwitch!
    
    
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 17
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
    }
    
    @IBAction func definitionPopup(_ sender: Any) {
        let alert = UIAlertController(title: "Definitions", message: "Black and White Thinking: 'Considering only the extremes' (e.g. 'I am a complete failure') \nOvergeneralizing: 'A single instance is viewed as indicative of a broader class' (e.g. 'Because I was not invited to the party, I will not be invited to other parties') \nSelective Abstraction: 'Attending to certain, usually negative, aspects of a situation at the cost of other aspects' (e.g. 'The person at the back of the audience was not interested in what I was saying') \nMind Reading: 'Attitudes or actions of others are assumed without evidence' (e.g. 'She obviously thinks I don't know what I am doing') \nPersonalizing: 'Assuming that an action is directed toward or occurs because of oneself' (e.g. 'He walked away because he doesn't want to see me') \nCatastrophizing: 'Anticipating extreme negative consequences without evidence' (e.g. 'My husband hasn't called--he might be dead') \nShould Statements: 'Absolute imperatives regarding' (e.g. 'I must be smart and witty at all times') \nMinimizing: 'Downplaying the significance of positive outcomes' (e.g. 'They only said they liked the dinner because they felt pity for me')", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Got it", style: .default, handler: { action in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func submit(_ sender: Any) {
        
        if blackandwhite.isOn {
            Journal.current?.blackAndWhiteThinking = true
        }
        else {
            Journal.current?.blackAndWhiteThinking = false
        }
       
        if overGeneralizing.isOn {
            Journal.current?.overgeneralizing = true
        }
        else {
            Journal.current?.overgeneralizing = false
        }
       
        if selectiveabstraction.isOn {
            Journal.current?.selectiveAbstraction = true
        }
        else {
            Journal.current?.selectiveAbstraction = false
        }
        
        if mindreading.isOn {
            Journal.current?.mindReading = true
        }
        else {
            Journal.current?.mindReading = false
        }
        
        if Personalizing.isOn {
            Journal.current?.personalizing = true
        }
        else {
            Journal.current?.personalizing = false
        }
        
        if Catastrophizing.isOn {
            Journal.current?.catastrophizing = true
        }
        else {
            Journal.current?.catastrophizing = false
        }
        
        if should.isOn {
            Journal.current?.shouldStatements = true
        }
        else {
            Journal.current?.shouldStatements = false
        }
        
        if Minimizing.isOn {
            Journal.current?.minimizing = true
        }
        else {
            Journal.current?.minimizing = false
        }
        
        if none.isOn {
            Journal.current?.noneOfTheAbove = true
        }
        else {
            Journal.current?.noneOfTheAbove = false
        }
    }
    
}
