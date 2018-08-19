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
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 25
        ref = Database.database().reference()
        
    }
    
    func submitToFirebase () {
        // write to firebase
        
        let key = Auth.auth().currentUser!.uid
        let journal = ["User": key,
                       "Timestamp": "timestamp",
                       "Date": "date",
                       "PreLoved": (Journal.current?.preLoved)! as Bool,
                       "PreHappy": (Journal.current?.preHappy)! as Bool,
                       "PreNervous": (Journal.current?.preNervous)! as Bool,
                       "PreAngry": (Journal.current?.preAngry)! as Bool,
                       "PreTired": (Journal.current?.preTired)! as Bool,
                       "PreSad": (Journal.current?.preSad)! as Bool,
                       "IsFeelingNegativeEmotionsYes": (Journal.current?.isFeelingNegativeEmotionsYes)! as Bool,
                       "IsFeelingNegativeEmotionsNo": (Journal.current?.isFeelingNegativeEmotionsNo)! as Bool,
                       "SituationDescription2": (Journal.current?.situationDescription2)! as String,
                       "ThoughtDescription1": (Journal.current?.thoughtDescription1)! as String,
                       "StuckPoint1": (Journal.current?.stuckPoint1)! as String,
                       "StuckPoint2": (Journal.current?.stuckPoint2)! as String,
                       "feelsAnger": (Journal.current?.feelsAnger)! as Bool,
                       "feelsHopelessness": (Journal.current?.feelsHopelessness)! as Bool,
                       "feelsEmptiness": (Journal.current?.feelsEmptiness)! as Bool,
                       "feelsWorthlessness": (Journal.current?.feelsWorthlessness)! as Bool,
                       "feelsGuilt": (Journal.current?.feelsGuilt)! as Bool,
                       "feelsFrustration": (Journal.current?.feelsFrustration)! as Bool,
                       "feelsShame": (Journal.current?.feelsShame)! as Bool,
                       "feelsIrritation": (Journal.current?.feelsIrritation)! as Bool,
                       "feelsLethargic": (Journal.current?.feelsLethargic)! as Bool,
                       "feelsVulnerable": (Journal.current?.feelsVulnerable)! as Bool,
                       "feelsSensitive": (Journal.current?.feelsSensitive)! as Bool,
                       "angerPercentage1": (Journal.current?.angerPercentage1)! as Int,
                       "hopelessnessPercentage2": (Journal.current?.hopelessnessPercentage2)! as Int,
                       "emptinessPercentage3": (Journal.current?.emptinessPercentage3)! as Int,
                       "worthlessnessPercentage4": (Journal.current?.worthlessnessPercentage4)! as Int,
                       "guiltPercentage5": (Journal.current?.guiltPercentage5)! as Int,
                       "frustrationPercentage6": (Journal.current?.frustrationPercentage6)! as Int,
                       "shamePercentage7": (Journal.current?.shamePercentage7)! as Int,
                       "irritationPercentage8": (Journal.current?.irritationPercentage8)! as Int,
                       "lethargicPercentage9": (Journal.current?.lethargicPercentage9)! as Int,
                       "vulnerablePercentage10": (Journal.current?.vulnerablePercentage10)! as Int,
                       "sensitivePercentage11": (Journal.current?.sensitivePercentage11)! as Int,
                       "behavior": (Journal.current?.behavior)! as String,
                       "behaviorInfluence": (Journal.current?.behaviorInfluence)! as String,
                       "copingMech": (Journal.current?.copingMech)! as String,
                       "alternativeCoping": (Journal.current?.alternativeCoping)! as String,
                       "avoided": (Journal.current?.avoided)! as String,
                       "prosCons": (Journal.current?.prosCons)! as String,
                       "thoughtAction": (Journal.current?.thoughtAction)! as String,
                       "effect": (Journal.current?.effect)! as String,
                       "factual": (Journal.current?.factual)! as Bool,
                       "exaggeration": (Journal.current?.exaggeration)! as Bool,
                       "isExcludingInfoYes": (Journal.current?.isExcludingInfoYes)! as Bool,
                       "isExcludingInfoNo": (Journal.current?.isExcludingInfoNo)! as Bool,
                       "blackAndWhiteThinking": (Journal.current?.blackAndWhiteThinking)! as Bool,
                       "overgeneralizing": (Journal.current?.overgeneralizing)! as Bool,
                       "selectiveAbstraction": (Journal.current?.selectiveAbstraction)! as Bool,
                       "mindReading": (Journal.current?.mindReading)! as Bool,
                       "personalizing": (Journal.current?.personalizing)! as Bool,
                       "catastrophizing": (Journal.current?.catastrophizing)! as Bool,
                       "shouldStatements": (Journal.current?.shouldStatements)! as Bool,
                       "minimizing": (Journal.current?.minimizing)! as Bool,
                       "noneOfTheAbove": (Journal.current?.noneOfTheAbove)! as Bool,
                       "mostImpactfulThought": (Journal.current?.mostImpactfulThought)! as String,
                       "fact": (Journal.current?.fact)! as Bool,
                       "opinion": (Journal.current?.opinion)! as Bool,
                       "reshapeImage": (Journal.current?.reshapeImage)! as String,
                       "positives": (Journal.current?.positives)! as String,
                       "believePreviousThought": (Journal.current?.believePreviousThought)! as Int,
                       "alternativeView": (Journal.current?.alternativeView)! as String,
                       "alternativeBelief": (Journal.current?.alternativeBelief)! as Int,
                       "feelsAngerPost": (Journal.current?.feelsAngerPost)! as Bool,
                       "feelsHopelessnessPost": (Journal.current?.feelsHopelessnessPost)! as Bool,
                       "feelsEmptinessPost": (Journal.current?.feelsEmptinessPost)! as Bool,
                       "feelsWorthlessnessPost": (Journal.current?.feelsWorthlessnessPost)! as Bool,
                       "feelsGuiltPost": (Journal.current?.feelsGuiltPost)! as Bool,
                       "feelsFrustrationPost": (Journal.current?.feelsFrustrationPost)! as Bool,
                       "feelsShamePost": (Journal.current?.feelsShamePost)! as Bool,
                       "feelsIrritationPost": (Journal.current?.feelsIrritationPost)! as Bool,
                       "feelsLethargicPost": (Journal.current?.feelsLethargicPost)! as Bool,
                       "feelsVulnerablePost": (Journal.current?.feelsVulnerablePost)! as Bool,
                       "feelsSensitivePost": (Journal.current?.feelsSensitivePost)! as Bool,
                       "angerPercentageReview1": (Journal.current?.angerPercentageReview1)! as Int,
                       "hopelessnessPercentageReview2": (Journal.current?.hopelessnessPercentageReview2)! as Int,
                       "emptinessPercentageReview3": (Journal.current?.emptinessPercentageReview3)! as Int,
                       "worthlessnessPercentageReview4": (Journal.current?.worthlessnessPercentageReview4)! as Int,
                       "guiltPercentageReview5": (Journal.current?.guiltPercentageReview5)! as Int,
                       "frustrationPercentageReview6": (Journal.current?.frustrationPercentageReview6)! as Int,
                       "shamePercentageReview7": (Journal.current?.shamePercentageReview7)! as Int,
                       "irritationPercentageReview8": (Journal.current?.irritationPercentageReview8)! as Int,
                       "lethargicPercentageReview9": (Journal.current?.lethargicPercentageReview9)! as Int,
                       "vulnerablePercentageReview10": (Journal.current?.vulnerablePercentageReview10)! as Int,
                       "sensitivePercentageReview11": (Journal.current?.sensitivePercentageReview11)! as Int,
                       "PostLoved": (Journal.current?.postLoved)! as Bool,
                       "PostHappy": (Journal.current?.postHappy)! as Bool,
                       "PostNervous": (Journal.current?.postNervous)! as Bool,
                       "PostAngry": (Journal.current?.postAngry)! as Bool,
                       "PostTired": (Journal.current?.postTired)! as Bool,
                       "PostSad": (Journal.current?.postSad)! as Bool] as [String : Any]
        
    //    let user = []
    //    ref?.child("Users").child(key).setValue()
        ref?.child("Journal").childByAutoId().setValue(journal)
        //Auth.auth().currentUser!.uid
        //ref?.child("Journal").childByAutoId().setValue(["user" : Auth.auth().currentUser!.uid])
        //ref?.child("Users").child(user.uid).setValue(text1.text)
        //ref?.child("BehaviorFeeling").childByAutoId().setValue(text2.text)
        
        // reset app
        Journal.current = nil
        UserDefaults.standard.set(nil, forKey: "currentJournal")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let SignInVC = storyboard.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        let LogASessionVC = storyboard.instantiateViewController(withIdentifier: "LogASessionViewController") as! LogASessionViewController
        self.navigationController?.setViewControllers([SignInVC, LogASessionVC], animated: true)    // signInVC is behind logasessionvc
    }
    
}
