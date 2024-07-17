//
//  DayWeather.swift
//  Weathers
//
//  Created by Jaimin Raval on 17/07/24.
//

import Foundation

struct DayWeather: Codable {
    let coord: Coord
    let weather: [Weather]
    let base: String
    let main: Main
    let visibility: Int
    let wind: Wind
    let rain: Rain?
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone: Int
    let id: Int
    let name: String
    let cod: Int
}

// MARK: - Clouds
struct Clouds: Codable {
    let all: Int
}

// MARK: - Coord
struct Coord: Codable {
    let lon: Double
    let lat: Double
}

// MARK: - Main
struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    let tempMin: Double
    let tempMax: Double
    let pressure: Int
    let humidity: Int
    let seaLevel: Int?
    let grndLevel: Int?

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case humidity
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
    }
}

// MARK: - Rain
struct Rain: Codable {
    let the1H: Double

    enum CodingKeys: String, CodingKey {
        case the1H = "1h"
    }
}

// MARK: - Sys
struct Sys: Codable {
    let type: Int
    let id: Int
    let country: String
    let sunrise: Int
    let sunset: Int
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

// MARK: - Wind
struct Wind: Codable {
    let speed: Double
    let deg: Int
    let gust: Double
}

/**
 Response:
 
{
"coord": {
"lon": 10.99,
"lat": 44.34
},
"weather": [
{
"id": 501,
"main": "Rain",
"description": "moderate rain",
"icon": "10d"
}
],
"base": "stations",
"main": {
"temp": 298.48,
"feels_like": 298.74,
"temp_min": 297.56,
"temp_max": 300.05,
"pressure": 1015,
"humidity": 64,
"sea_level": 1015,
"grnd_level": 933
},
"visibility": 10000,
"wind": {
"speed": 0.62,
"deg": 349,
"gust": 1.18
},
"rain": {
"1h": 3.16
},
"clouds": {
"all": 100
},
"dt": 1661870592,
"sys": {
"type": 2,
"id": 2075663,
"country": "IT",
"sunrise": 1661834187,
"sunset": 1661882248
},
"timezone": 7200,
"id": 3163858,
"name": "Zocca",
"cod": 200
}

 **/
