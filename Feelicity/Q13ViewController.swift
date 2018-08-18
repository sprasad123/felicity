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
