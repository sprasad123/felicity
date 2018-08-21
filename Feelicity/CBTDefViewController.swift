//
//  CBTDefViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 7/18/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit

class CBTDefViewController: UIViewController {
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 2
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
    }

    
}
