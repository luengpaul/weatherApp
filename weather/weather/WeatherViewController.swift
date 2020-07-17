//
//  WeatherViewController.swift
//  weather
//
//  Created by Paul Lueng on 7/17/20.
//  Copyright © 2020 Paul Lueng. All rights reserved.
//
import UIKit

class WeatherViewController: UIViewController {
    
    var weatherManager = WeatherManager()
    
    var cityName: String = "San Francisco"
    
    @IBOutlet weak var temperatureLabel: UIView!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherManager.fetchWeather(cityName:cityName)
        // Do any additional setup after loading the view.
    }


}
