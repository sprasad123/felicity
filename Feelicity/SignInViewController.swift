//
//  ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 4/19/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class SignInViewController: UIViewController, GIDSignInUIDelegate, FBSDKLoginButtonDelegate {
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if let error = error {
            //
            self.showAlert()
            return
        }
        let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        Auth.auth().signInAndRetrieveData(with: credential) { (authResult, error) in
            if let error = error {
                //
                self.showAlert()
                return
            }
            // User is signed in
            //
            self.goToMainVC()
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    

    @IBOutlet weak var facebookLogin: FBSDKLoginButton!
    @IBOutlet weak var emailLogin: UITextField!
    @IBOutlet weak var passwordLogin: UITextField!
    
  /*  @IBAction func signUp(_ sender: Any) {
        if let email = emailLogin.text, let password = passwordLogin.text {        // makes sure email isn't empty
            if email != "" && password != "" {
                signUpEmail(email: email, password: password)
            }
            else {
                showAlert()
            }
        }
    }
    */
    
    @IBAction func emailLogin(_ sender: Any) {
        if let email = emailLogin.text, let password = passwordLogin.text {        // makes sure email isn't empty
            if email != "" && password != "" {
                signInEmail(email: email, password: password)
            }
            else {
                showAlert()
            }
        }
    }
    /*
    func signUpEmail(email: String,password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
    // ...
            self.goToMainVC()
        }
    }
    */
    func signInEmail(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            // ...
            if let error = error {
                //
                self.showAlert()
                return
            }
            // User is signed in
            
            self.goToMainVC()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        
        facebookLogin.delegate = self
        facebookLogin.readPermissions = [ "public_profile" ]
        
        if let accessToken = FBSDKAccessToken.current() {
            // User is logged in, use 'accessToken' here.
            goToMainVC()
        }
        //loginButton = LoginButton(readPermissions: [ .publicProfile, .Email, .UserFriends ])
        
        //GIDSignIn.sharedInstance().signIn()
        // TODO(developer) Configure the sign-in button look/feel
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: (UIImage(named: "GreenBackground"))!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(goToMainVC), name: NSNotification.Name(rawValue: "googleSignInSucceeded"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showAlert), name: NSNotification.Name(rawValue: "googleSignInFailed"), object: nil)
        if Auth.auth().currentUser != nil {
           goToMainVC()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func goToMainVC() {
        
        User.setCurrentUser()
        //Put segue code here, In here go to next VC by calling your segue or doing it programattically
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let LogASessionVC = storyboard.instantiateViewController(withIdentifier: "LogASessionViewController") as! LogASessionViewController
        self.navigationController?.pushViewController(LogASessionVC, animated: true)
    }
    
    @objc func showAlert() {
        
        //Put alert code here
        let alert = UIAlertController(title: "Alert", message: "Try Again", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}

