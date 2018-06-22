//
//  WeatherPanelExtensionStyle.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import Hammer
import Pixels

extension WeatherPanel {
    
    struct Style {
        
        struct View {
            
            static var backgroundColor: UIColor {
                get {
                    return .clear
                }
            }
            
        }
        
        struct CityLabel {
            
            static var textAttributes: [NSAttributedStringKey : Any] {
                get {
                    return [
                        .font: UIFont.systemFont(ofSize: 36.0, weight: .thin),
                        .foregroundColor: UIColor.Material.Gray._900,
                        .kern: 0.5,
                        .paragraphStyle: NSMutableParagraphStyle().hmr.use(closure: { (paragraphStyle) in
                            paragraphStyle.alignment = .center
                        }).object
                    ]
                }
            }
            
        }
        
        struct TemperatureLabel {
            
            static var textAttributes: [NSAttributedStringKey : Any] {
                get {
                    return [
                        .font: UIFont.systemFont(ofSize: 17.0, weight: .regular),
                        .foregroundColor: UIColor.Material.Gray._800,
                        .kern: 0.5,
                        .paragraphStyle: NSMutableParagraphStyle().hmr.use(closure: { (paragraphStyle) in
                            paragraphStyle.alignment = .center
                        }).object
                    ]
                }
            }
            
        }
        
        struct HumidityLabel {
            
            static var textAttributes: [NSAttributedStringKey : Any] {
                get {
                    return [
                        .font: UIFont.systemFont(ofSize: 17.0, weight: .regular),
                        .foregroundColor: UIColor.Material.Gray._800,
                        .kern: 0.5,
                        .paragraphStyle: NSMutableParagraphStyle().hmr.use(closure: { (paragraphStyle) in
                            paragraphStyle.alignment = .center
                        }).object
                    ]
                }
            }
            
        }
        
        struct WindSpeedLabel {
            
            static var textAttributes: [NSAttributedStringKey : Any] {
                get {
                    return [
                        .font: UIFont.systemFont(ofSize: 17.0, weight: .regular),
                        .foregroundColor: UIColor.Material.Gray._800,
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
