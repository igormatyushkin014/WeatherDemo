//
//  WeatherPanel.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Hammer
import Pixels

class WeatherPanel: UIView {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var cityLabel: UILabel!
    
    @IBOutlet fileprivate weak var temperatureLabel: UILabel!
    
    @IBOutlet fileprivate weak var humidityLabel: UILabel!
    
    @IBOutlet fileprivate weak var windSpeedLabel: UILabel!
    
    // MARK: Object variables & properties
    
    fileprivate var _model: Model?
    
    var model: Model? {
        get {
            return self._model
        }
        set {
            /*
             * Save data.
             */
            
            self._model = newValue
            
            /*
             * Update UI.
             */
            
            self.updateCityLabel(with: newValue)
            self.updateTemperatureLabel(with: newValue)
            self.updateHumidityLabel(with: newValue)
            self.updateWindSpeedLabel(with: newValue)
        }
    }
    
    // MARK: Public object methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        /*
         * Prepare view.
         */
        
        self.setupView()
        
        /*
         * Prepare data.
         */
        
        self.model = nil
    }
    
    // MARK: Private object methods
    
    fileprivate func setupView() {
        self.backgroundColor = Style.View.backgroundColor
    }
    
    fileprivate func updateCityLabel(with model: Model?) {
        if let city = model?.city {
            let text = String(
                format: "%@",
                city.name
            )
            let attributedText = NSAttributedString(string: text, attributes: Style.CityLabel.textAttributes)
            self.cityLabel.attributedText = attributedText
        } else {
            self.cityLabel.text = ""
        }
    }
    
    fileprivate func updateTemperatureLabel(with model: Model?) {
        if let weather = model?.weather {
            let temperatureInCelcius = TemperatureConverter.celcius(fromKelvin: weather.temperature)
            
            let text = String(
                format: "Temperature: %.0f°C",
                temperatureInCelcius
            )
            let attributedText = NSAttributedString(string: text, attributes: Style.TemperatureLabel.textAttributes)
            self.temperatureLabel.attributedText = attributedText
        } else {
            self.temperatureLabel.text = ""
        }
    }
    
    fileprivate func updateHumidityLabel(with model: Model?) {
        if let weather = model?.weather {
            let text = String(
                format: "Humidity: %.0f%%",
                weather.humidity
            )
            let attributedText = NSAttributedString(string: text, attributes: Style.TemperatureLabel.textAttributes)
            self.humidityLabel.attributedText = attributedText
        } else {
            self.humidityLabel.text = ""
        }
    }
    
    fileprivate func updateWindSpeedLabel(with model: Model?) {
        if let weather = model?.weather {
            let text = String(
                format: "Wind: %.0f m/s",
                weather.windSpeed
            )
            let attributedText = NSAttributedString(string: text, attributes: Style.TemperatureLabel.textAttributes)
            self.windSpeedLabel.attributedText = attributedText
        } else {
            self.windSpeedLabel.text = ""
        }
    }
    
    // MARK: Actions
    
    // MARK: Protocol implementation
    
}

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

extension WeatherPanel {
    
    struct Model {
        var city: City
        var weather: Weather
    }
    
}
