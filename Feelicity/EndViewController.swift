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
        
        var journal = ["PreEmoji": (Journal.current?.preEmoji)!,
                       "IsFeelingNegativeEmotions": (Journal.current?.isFeelingNegativeEmotions)!,
                       "SituationDescription2": (Journal.current?.situationDescription2)!,
                       "ThoughtDescription1": (Journal.current?.thoughtDescription1)!,
                       "StuckPoint1": (Journal.current?.stuckPoint1)!,
                       "StuckPoint2": (Journal.current?.stuckPoint2)!,
                       "feelsAnger": (Journal.current?.feelsAnger)!,
                       "feelsHopelessness": (Journal.current?.feelsHopelessness)!,
                       "feelsEmptiness": (Journal.current?.feelsEmptiness)!,
                       "feelsWorthlessness": (Journal.current?.feelsWorthlessness)!,
                       "feelsGuilt": (Journal.current?.feelsGuilt)!,
                       "feelsFrustration": (Journal.current?.feelsFrustration)!,
                       "feelsShame": (Journal.current?.feelsShame)!,
                       "feelsIrritation": (Journal.current?.feelsIrritation)!,
                       "feelsLethargic": (Journal.current?.feelsLethargic)!,
                       "feelsVulnerable": (Journal.current?.feelsVulnerable)!,
                       "feelsSensitive": (Journal.current?.feelsSensitive)!,
                       "angerPercentage1": (Journal.current?.angerPercentage1)!,
                       "hopelessnessPercentage2": (Journal.current?.hopelessnessPercentage2)!,
                       "emptinessPercentage3": (Journal.current?.emptinessPercentage3)!,
                       "worthlessnessPercentage4": (Journal.current?.worthlessnessPercentage4)!,
                       "guiltPercentage5": (Journal.current?.guiltPercentage5)!,
                       "frustrationPercentage6": (Journal.current?.frustrationPercentage6)!,
                       "shamePercentage7": (Journal.current?.shamePercentage7)!,
                       "irritationPercentage8": (Journal.current?.irritationPercentage8)!,
                       "lethargicPercentage9": (Journal.current?.lethargicPercentage9)!,
                       "vulnerablePercentage10": (Journal.current?.vulnerablePercentage10)!,
                       "sensitivePercentage11": (Journal.current?.sensitivePercentage11)!,
                       "behavior": (Journal.current?.behavior)!,
                       "behaviorInfluence": (Journal.current?.behaviorInfluence)!,
                       "copingMech": (Journal.current?.copingMech)!,
                       "alternativeCoping": (Journal.current?.alternativeCoping)!,
                       "avoided": (Journal.current?.avoided)!,
                       "prosCons": (Journal.current?.prosCons)!,
                       "thoughtAction": (Journal.current?.thoughtAction)!,
                       "effect": (Journal.current?.effect)!,
                       "factual": (Journal.current?.factual)!,
                       "exaggeration": (Journal.current?.exaggeration)!,
                       "isExcludingInfoYes": (Journal.current?.isExcludingInfoYes)!,
                       "isExcludingInfoNo": (Journal.current?.isExcludingInfoNo)!,
                       "blackAndWhiteThinking": (Journal.current?.blackAndWhiteThinking)!,
                       "overgeneralizing": (Journal.current?.overgeneralizing)!,
                       "selectiveAbstraction": (Journal.current?.selectiveAbstraction)!,
                       "mindReading": (Journal.current?.mindReading)!,
                       "personalizing": (Journal.current?.personalizing)!,
                       "catastrophizing": (Journal.current?.catastrophizing)!,
                       "shouldStatements": (Journal.current?.shouldStatements)!,
                       "minimizing": (Journal.current?.minimizing)!,
                       "noneOfTheAbove": (Journal.current?.noneOfTheAbove)!,
                       "mostImpactfulThought": (Journal.current?.mostImpactfulThought)!,
                       "fact": (Journal.current?.fact)!,
                       "opinion": (Journal.current?.opinion)!,
                       "reshapeImage": (Journal.current?.reshapeImage)!,
                       "positives": (Journal.current?.positives)!,
                       "believePreviousThought": (Journal.current?.believePreviousThought)!,
                       "alternativeView": (Journal.current?.alternativeView)!,
                       "alternativeBelief": (Journal.current?.alternativeBelief)!,
                       "feelsAngerPost": (Journal.current?.feelsAngerPost)!,
                       "feelsHopelessnessPost": (Journal.current?.feelsHopelessnessPost)!,
                       "feelsEmptinessPost": (Journal.current?.feelsEmptinessPost)!,
                       "feelsWorthlessnessPost": (Journal.current?.feelsWorthlessnessPost)!,
                       "feelsGuiltPost": (Journal.current?.feelsGuiltPost)!,
                       "feelsFrustrationPost": (Journal.current?.feelsFrustrationPost)!,
                       "feelsShamePost": (Journal.current?.feelsShamePost)!,
                       "feelsIrritationPost": (Journal.current?.feelsIrritationPost)!,
                       "feelsLethargicPost": (Journal.current?.feelsLethargicPost)!,
                       "feelsVulnerablePost": (Journal.current?.feelsVulnerablePost)!,
                       "feelsSensitivePost": (Journal.current?.feelsSensitivePost)!,
                       "angerPercentageReview1": (Journal.current?.angerPercentageReview1)!,
                       "hopelessnessPercentageReview2": (Journal.current?.hopelessnessPercentageReview2)!,
                       "emptinessPercentageReview3": (Journal.current?.emptinessPercentageReview3)!,
                       "worthlessnessPercentageReview4": (Journal.current?.worthlessnessPercentageReview4)!,
                       "guiltPercentageReview5": (Journal.current?.guiltPercentageReview5)!,
                       "frustrationPercentageReview6": (Journal.current?.frustrationPercentageReview6)!,
                       "shamePercentageReview7": (Journal.current?.shamePercentageReview7)!,
                       "irritationPercentageReview8": (Journal.current?.irritationPercentageReview8)!,
                       "lethargicPercentageReview9": (Journal.current?.lethargicPercentageReview9)!,
                       "vulnerablePercentageReview10": (Journal.current?.vulnerablePercentageReview10)!,
                       "sensitivePercentageReview11": (Journal.current?.sensitivePercentageReview11)!,
                       "postEmoji": (Journal.current?.postEmoji)!] as [String : Any]
        
        //Auth.auth().currentUser!.uid
        //ref?.child("Journal").childByAutoId().setValue(["user" : Auth.auth().currentUser!.uid])
        //ref?.child("Users").child(user.uid.setValue(text1.text)
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
