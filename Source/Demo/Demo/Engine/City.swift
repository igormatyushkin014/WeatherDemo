//
//  City.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

enum City {
    case telAviv
    case jerusalem
}

extension City {
    
    var name: String {
        get {
            switch self {
            case .telAviv:
                return "Tel Aviv"
            case .jerusalem:
                return "Jerusalem"
            }
        }
    }
    
}
