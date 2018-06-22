//
//  MainNavigationController.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         * Prepare visual part.
         */
        
        self.setupAppearance()
    }
    
    // MARK: Private object methods
    
    fileprivate func setupAppearance() {
        self.isNavigationBarHidden = true
    }
    
    // MARK: Actions
    
    // MARK: Protocol implementation
    
}
