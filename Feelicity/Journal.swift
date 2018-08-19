//
//  Journal.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class Journal: NSObject {
    
    
    static var current: Journal?
    
    var currentPage: Int = 0
    
    // database storage variables - empty space signifies the next frame
    var situationDescription1: Int = 0
    
    var preLoved: Bool = false
    var preHappy: Bool = false
    var preNervous: Bool = false
    var preAngry: Bool = false
    var preTired: Bool = false
    var preSad: Bool = false
   // var preEmoji: String? = ""
    
    var isFeelingNegativeEmotionsYes: Bool = false
    var isFeelingNegativeEmotionsNo: Bool = false
    var situationDescription2: String? = ""
    
    var thoughtDescription1: String? = ""
    
    var stuckPoint1: String? = ""
    var stuckPoint2: String? = ""
    
    var feelsAnger: Bool = false
    var feelsHopelessness: Bool = false
    var feelsEmptiness: Bool = false
    var feelsWorthlessness: Bool = false
    var feelsGuilt: Bool = false
    var feelsFrustration: Bool = false
    var feelsShame: Bool = false
    var feelsIrritation: Bool = false
    var feelsLethargic: Bool = false
    var feelsVulnerable: Bool = false
    var feelsSensitive: Bool = false
    
    var angerPercentage1: Int = 0
    var hopelessnessPercentage2: Int = 0
    var emptinessPercentage3: Int = 0
    var worthlessnessPercentage4: Int = 0
    var guiltPercentage5: Int = 0
    var frustrationPercentage6: Int = 0
    var shamePercentage7: Int = 0
    var irritationPercentage8: Int = 0
    var lethargicPercentage9: Int = 0
    var vulnerablePercentage10: Int = 0
    var sensitivePercentage11: Int = 0
    
    var behavior: String? = ""
    var behaviorInfluence: String? = ""
    
    var copingMech: String? = ""
    var alternativeCoping: String? = ""
    
    var avoided: String? = ""
    var prosCons: String? = ""
    
    var thoughtAction: String? = ""
    var effect: String? = ""
    
    var factual: Bool = false
    var exaggeration: Bool = false
    
    var isExcludingInfoYes: Bool = false
    var isExcludingInfoNo: Bool = false
    
    var blackAndWhiteThinking: Bool = false
    var overgeneralizing: Bool = false
    var selectiveAbstraction: Bool = false
    var mindReading: Bool = false
    var personalizing: Bool = false
    var catastrophizing: Bool = false
    var shouldStatements: Bool = false
    var minimizing: Bool = false
    var noneOfTheAbove: Bool = false
    
    var mostImpactfulThought: String? = ""
    var fact: Bool = false
    var opinion: Bool = false
    
    var reshapeImage: String? = ""
    var positives: String? = ""
    
    var believePreviousThought: Int = 0
    
    var alternativeView: String? = ""
    var alternativeBelief: Int = 0
    
    var feelsAngerPost: Bool = false
    var feelsHopelessnessPost: Bool = false
    var feelsEmptinessPost: Bool = false
    var feelsWorthlessnessPost: Bool = false
    var feelsGuiltPost: Bool = false
    var feelsFrustrationPost: Bool = false
    var feelsShamePost: Bool = false
    var feelsIrritationPost: Bool = false
    var feelsLethargicPost: Bool = false
    var feelsVulnerablePost: Bool = false
    var feelsSensitivePost: Bool = false
    
    var angerPercentageReview1: Int = 0
    var hopelessnessPercentageReview2: Int = 0
    var emptinessPercentageReview3: Int = 0
    var worthlessnessPercentageReview4: Int = 0
    var guiltPercentageReview5: Int = 0
    var frustrationPercentageReview6: Int = 0
    var shamePercentageReview7: Int = 0
    var irritationPercentageReview8: Int = 0
    var lethargicPercentageReview9: Int = 0
    var vulnerablePercentageReview10: Int = 0
    var sensitivePercentageReview11: Int = 0
    
    var postLoved: Bool = false
    var postHappy: Bool = false
    var postNervous: Bool = false
    var postAngry: Bool = false
    var postTired: Bool = false
    var postSad: Bool = false
//    var postEmoji: String? = ""
    
    static func setCurrentJournal() {
        let journal = Journal()
        Journal.current = journal
    }

}
