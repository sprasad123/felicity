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
    
    override func viewDidLoad() {
        guard let currentJournal = UserDefaults.standard.object(forKey: "currentJournal") as? Journal else {
            Journal.current = Journal()
            return }   // retrieves current journal object or if object is empty then create new journal object
        Journal.current = currentJournal
    /*    switch (currentJournal.currentPage) {
        case 1 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 2 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 3 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 4 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 5 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 6 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 7 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 8 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 9 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 10 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 11 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 12 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 13 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 14 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 15 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 16 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 17 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 18 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 19 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 20 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 21 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 22 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 23 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 24 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        case 25 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let CBTDefVC = storyboard.instantiateViewController(withIdentifier: "CBTDef") as! CBTDefViewController
            self.navigationController?.pushViewController(CBTDefVC, animated: true)
            break
            
        default :
            break
        } */
    }
    
    @IBAction func goToSignInVC() {
        GIDSignIn.sharedInstance().signOut()
        FBSDKLoginManager().logOut()
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            User.current = nil
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
