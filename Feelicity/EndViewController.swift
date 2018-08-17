//
//  EndViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class EndViewController: UIViewController {
    
    func submitToFirebase () {
        // write to firebase
        
        // reset app
        Journal.current = nil
        UserDefaults.standard.set(nil, forKey: "currentJournal")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let SignInVC = storyboard.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        let LogASessionVC = storyboard.instantiateViewController(withIdentifier: "LogASessionViewController") as! LogASessionViewController
        self.navigationController?.setViewControllers([SignInVC, LogASessionVC], animated: true)    // signInVC is behind logasessionvc
    }
    
}
