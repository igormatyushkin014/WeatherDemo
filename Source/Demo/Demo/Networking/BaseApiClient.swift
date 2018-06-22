//
//  BaseApiClient.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

class BaseApiClient {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    func baseUrl() -> String {
        return ""
    }
    
    func absoluteUrl(fromRelative relativeUrl: String) -> String {
        return String(
            format: "%@%@",
            self.baseUrl(),
            relativeUrl
        )
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
