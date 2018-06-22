//
//  NullableModelHolder.swift
//  Hammer
//
//  Created by Igor Matyushkin on 01.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public protocol NullableModelHolder: class {
    
    associatedtype Model
    
    var model: Model? { get set }
    
}
