//
//  MainViewController.swift
//  Demo
//
//  Created by Igor Matyushkin on 22.06.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Visuality
import Degree
import Alamofire

class MainViewController: UIViewController {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var weatherPanelContainer: ContainerView!
    
    @IBOutlet fileprivate weak var updateWeatherButton: UIButton!
    
    // MARK: Object variables & properties
    
    fileprivate var weatherPanel: WeatherPanel!
    
    fileprivate var waitingPanel: WaitingPanel!
    
    fileprivate var weatherRequest: Request?
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         * Colorify background using `Degree` and `Pixels` libraries.
         */
        
        let gradientView = self.view as! GradientView
        gradientView.gradient = Style.View.backgroundGradient
        
        /*
         * Prepare weather panel.
         */
        
        self.setupWeatherPanel()
        
        /*
         * Prepare update weather button.
         */
        
        self.setupUpdateWeatherButton()
    }
    
    // MARK: Private object methods
    
    fileprivate func setupWeatherPanel() {
        if self.weatherPanel == nil {
            self.weatherPanelContainer.setContentView(ofType: WeatherPanel.self, fromNib: .byClassName, locatedInBundle: .main) { (contentView) in
                self.weatherPanel = contentView
            }
        } else {
            self.weatherPanelContainer.contentView = self.weatherPanel
        }
    }
    
    fileprivate func setupWaitingPanel() {
        if self.waitingPanel == nil {
            self.weatherPanelContainer.setContentView(ofType: WaitingPanel.self, fromNib: .byClassName, locatedInBundle: .main) { (contentView) in
                self.waitingPanel = contentView
            }
        } else {
            self.weatherPanelContainer.contentView = self.waitingPanel
        }
    }
    
    fileprivate func setupUpdateWeatherButton() {
        self.updateWeatherButton.backgroundColor = Style.UpdateWeatherButton.backgroundColor
        self.updateWeatherButton.layer.borderWidth = Style.UpdateWeatherButton.borderWidth
        self.updateWeatherButton.layer.borderColor = Style.UpdateWeatherButton.borderColor.cgColor
        self.updateWeatherButton.layer.cornerRadius = Style.UpdateWeatherButton.cornerRadius
        
        let title = Content.UpdateWeatherButton.title
        let attributedTitle = NSAttributedString(string: title, attributes: Style.UpdateWeatherButton.titleAttributes)
        self.updateWeatherButton.setAttributedTitle(attributedTitle, for: [])
    }
    
    fileprivate func handleResponse(for city: City, with weather: Weather?, success: Bool) {
        /*
         * Update weather panel.
         */
        
        self.setupWeatherPanel()
        
        var newModelForWeatherPanel: WeatherPanel.Model? = nil
        
        if let `weather` = weather {
            newModelForWeatherPanel = WeatherPanel.Model(
                city: city,
                weather: weather
            )
        }
        
        self.weatherPanel.model = newModelForWeatherPanel
    }
    
    // MARK: Actions
    
    @IBAction func updateWeatherButtonDidTap(_ sender: Any) {
        /*
         * Prepare data before request.
         */
        
        let city: City = .telAviv
        
        /*
         * Prepare UI.
         */
        
        self.setupWaitingPanel()
        
        /*
         * Cancel previous request if it's not finished.
         * Then start new request.
         */
        
        self.weatherRequest?.cancel()
        
        self.weatherRequest = WeatherManager.shared.currentWeather(for: city, withCompletion: { [weak self] (weather, success) in
            self?.handleResponse(for: city, with: weather, success: success)
        })
    }
    
    // MARK: Protocol implementation
    
}
