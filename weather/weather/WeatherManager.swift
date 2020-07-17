//
//  WeatherManager.swift
//  weather
//
//  Created by Paul Lueng on 7/17/20.
//  Copyright © 2020 Paul Lueng. All rights reserved.
//

import Foundation
struct WeatherManager{
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=ee5f1bb7f25a32eeadb89c8402d9e866&units=metric"
    
    
    func fetchWeather(cityName:String){
        let urlString = "\(weatherURL)"+"&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                
                if let safeData = data{
                    self.parseJSON(weatherData: safeData)
                }
            }
            task.resume()
        }
        
    }
    
    func parseJSON(weatherData: Data){
        let decoder = JSONDecoder()
        do{
           let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.main.temp)
        }
        catch{
            print(error)
        }
        
    }
    
    
}
