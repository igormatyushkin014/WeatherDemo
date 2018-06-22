//
//  OpenWeatherApiClient.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class OpenWeatherApiClient: BaseApiClient {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    init(apiKey: String) {
        self.apiKey = apiKey
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var apiKey: String
    
    // MARK: Public object methods
    
    override func baseUrl() -> String {
        return "https://api.openweathermap.org/data/2.5"
    }
    
    func currentWeather(forCity city: String, withCompletion completion: @escaping (_ weather: Weather?, _ error: Error?) -> Void) -> Request {
        let relativeUrl = "/weather"
        let absoluteUrl = self.absoluteUrl(fromRelative: relativeUrl)
        
        let parameters: Parameters? = [
            "q": city,
            "appid": self.apiKey
        ]
        
        let parameterEncoding: ParameterEncoding = URLEncoding.default
        
        let headers: HTTPHeaders? = nil
        
        let dataRequest = request(absoluteUrl, method: .get, parameters: parameters, encoding: parameterEncoding, headers: headers)
        dataRequest.responseJSON { (dataResponse) in
            let error = dataResponse.result.error
            
            guard let dictionary = dataResponse.result.value as? NSDictionary else {
                completion(nil, error)
                return
            }
            
            let json = JSON(dictionary)
            
            guard let weather = Weather.from(json: json) else {
                completion(nil, error)
                return
            }
            
            completion(weather, error)
        }
        
        return dataRequest
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol implementation
    
}
