//
//  WeatherData.swift
//  weather
//
//  Created by Paul Lueng on 7/17/20.
//  Copyright © 2020 Paul Lueng. All rights reserved.
//

import Foundation

struct WeatherData : Decodable{
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable{
    let temp: Double
}

struct Weather:Decodable{
    let description: String
}
