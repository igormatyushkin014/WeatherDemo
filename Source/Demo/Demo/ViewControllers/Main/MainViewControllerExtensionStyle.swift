//
//  MainViewControllerExtensionStyle.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import Hammer
import Pixels
import Degree

extension MainViewController {
    
    struct Style {
        
        struct View {
            
            static var backgroundGradient: Gradient {
                get {
                    return Gradient.make
                        .from(.topLeft)
                        .to(.bottomRight)
                        .step(withColor: UIColor.Material.White.default, andLocation: 0.0)
                        .step(withColor: UIColor.Material.LightBlue._500, andLocation: 0.5)
                        .step(withColor: UIColor.Material.Amber._500, andLocation: 1.0)
                        .get
                }
            }
            
        }
        
        struct UpdateWeatherButton {
            
            static var backgroundColor: UIColor {
                get {
                    return .clear
                }
            }
            
            static var borderWidth: CGFloat {
                get {
                    return 2.0
                }
            }
            
            static var borderColor: UIColor {
                get {
                    return UIColor.Material.Gray._700
                }
            }
            
            static var cornerRadius: CGFloat {
                get {
                    return 4.0
                }
            }
            
            static var titleAttributes: [NSAttributedStringKey : Any] {
                get {
                    return [
                        .font: UIFont.systemFont(ofSize: 24.0, weight: .bold),
                        .foregroundColor: UIColor.Material.Gray._900,
                        .kern: 0.5,
                        .paragraphStyle: NSMutableParagraphStyle().hmr.use(closure: { (paragraphStyle) in
                            paragraphStyle.alignment = .center
                        }).object
                    ]
                }
            }
            
        }
        
    }
    
}
