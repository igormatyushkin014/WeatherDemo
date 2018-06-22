//
//  WeatherManager.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Alamofire

class WeatherManager {
    
    // MARK: Class variables & properties
    
    static var shared = {
        return WeatherManager(apiKey: AppConfiguration.ExternalServicesIntegration.OpenWeatherMap.apiKey)
    }()
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    init(apiKey: String) {
        self.apiClient = OpenWeatherApiClient(apiKey: apiKey)
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var apiClient: OpenWeatherApiClient
    
    // MARK: Public object methods
    
    func currentWeather(for city: City, withCompletion completion: @escaping CurrentWeatherResultHandler) -> Request {
        /*
         * Prepare data before sending request.
         */
        
        let cityName = city.name
        
        /*
         * Send request and return reference to support its cancellation.
         */
        
        return self.apiClient.currentWeather(forCity: cityName, withCompletion: { (weather, error) in
            let success = error == nil
            completion(weather, success)
        })
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}

extension WeatherManager {
    
    typealias CurrentWeatherResultHandler = (_ weather: Weather?, _ success: Bool) -> Void
    
}
