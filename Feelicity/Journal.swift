//
//  Journal.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import Firebase

class Journal: NSObject {
    
    
    static var current: Journal?
    
    var behavior: String?
    
    var currentPage: Int = 0
    
    // vars for all database storage
    var situationDescription1: Int
    var emoji: String
    var situationDescription2: String
    var 
    
    static func setCurrentJournal() {
        let journal = Journal()
        Journal.current = journal
    }

}
