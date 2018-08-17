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
    
    
    static var current:Journal?
    
    // vars for all firebase stuff
    
    var behavior:String?
    
    var currentPage:Int = 0
    
    static func setCurrentJournal() {
        let journal = Journal()
        Journal.current = journal
    }

}
