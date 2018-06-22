//
//  TemperatureConverter.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

class TemperatureConverter {
    
    class func celcius(fromKelvin kelvin: Double) -> Double {
        return kelvin - 273.15
    }
    
}
