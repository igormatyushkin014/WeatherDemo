//
//  Weather.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Weather {
    /**
     * Temperature in Kelvin.
     */
    var temperature: Double
    
    /**
     * Speed of the wind in meter per second.
     */
    var windSpeed: Double
    
    /**
     * Humidity percentage.
     */
    var humidity: Double
}

extension Weather {
    
    static func from(json: JSON) -> Weather? {
        guard let temperature = json["main"]["temp"].double else {
            return nil
        }
        
        guard let windSpeed = json["wind"]["speed"].double else {
            return nil
        }
        
        guard let humidity = json["main"]["humidity"].double else {
            return nil
        }
        
        return Weather(
            temperature: temperature,
            windSpeed: windSpeed,
            humidity: humidity
        )
    }
    
}
