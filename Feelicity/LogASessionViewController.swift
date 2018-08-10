//
//  LogASessionViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 7/18/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class LogASessionViewController: UIViewController, GIDSignInUIDelegate {
    
    @IBAction func goToSignInVC() {
        GIDSignIn.sharedInstance().signOut()
        FBSDKLoginManager().logOut()
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func goToCBTDef() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
        self.navigationController?.pushViewController(CBTDefVC, animated: true)
    }

}
