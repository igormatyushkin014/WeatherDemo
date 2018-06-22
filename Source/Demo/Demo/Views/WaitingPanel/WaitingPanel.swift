//
//  WaitingPanel.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

class WaitingPanel: UIView {
    
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        /*
         * Prepare view.
         */
        
        self.setupView()
    }
    
    // MARK: Private object methods
    
    fileprivate func setupView() {
        self.backgroundColor = Style.View.backgroundColor
    }
    
    // MARK: Actions
    
    // MARK: Protocol implementation
    
}
