//
//  ObjectManager.swift
//  Hammer
//
//  Created by Igor Matyushkin on 01.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

public class ObjectManager<Object: NSObjectProtocol> {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(object: Object) {
        self.object = object
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public fileprivate(set) var object: Object!
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}

/*
 Conversions.
 */
public extension ObjectManager {
    
    public func use(closure: (_ object: Object) -> Void) -> Self {
        closure(self.object)
        return self
    }
    
    public func use<Class: NSObjectProtocol>(as type: Class.Type, closure: (_ object: Class) -> Void) -> Self {
        closure(self.object as! Class)
        return self
    }
    
}
