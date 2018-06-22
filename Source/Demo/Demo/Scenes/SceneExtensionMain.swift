//
//  SceneExtensionMain.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import Visuality
import Hammer
import Direct

extension Scene {
    
    static var main: Scene {
        get {
            let navigationController = MainNavigationController().hmr.use { (navigationController) in
                navigationController.viewControllers = [
                    MainViewController.from(nib: .byClassName, inBundle: .main)
                ]
            }.object!
            return Scene(rootController: navigationController)
        }
    }
    
}
