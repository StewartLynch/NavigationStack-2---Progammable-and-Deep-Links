//
// Created for NavStackIntro 2
// by Stewart Lynch on 2022-06-06
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//
    

import Foundation

struct Country: Identifiable, Hashable {
    var name: String
    var flag: String
    var population: Int
    var cities: [City]
    var id: String {
        name
    }

    static var sample: [Country] {
        [
            Country(name: "Canada", flag: "🇨🇦", population: 36991981, cities: City.all.filter{$0.country == "Canada"}),
            Country(name: "United States", flag: "🇺🇸", population: 332278200, cities: City.all.filter{$0.country == "United States"}),
            Country(name: "United Kingdom", flag: "🇬🇧", population: 67886004, cities: City.all.filter{$0.country == "United Kingdom"}),
            Country(name: "France", flag: "🇫🇷", population: 67413000, cities: City.all.filter{$0.country == "France"}),
            Country(name: "Mexico", flag: "🇲🇽", population: 128830, cities:  City.all.filter{$0.country == "Mexico"}),
        ]
    }
}


struct City: Identifiable, Hashable {
    var name: String
    var country: String
    var isCapital: Bool
    var population: Int
    var id: String {
        name
    }
    
    static var all: [City] {
        [
            City(name: "Vancouver", country: "Canada", isCapital: false, population:  2632000),
            City(name: "Victoria", country: "Canada", isCapital: false, population: 394000),
            City(name: "Toronto", country: "Canada", isCapital: false, population: 6313000),
            City(name: "Ottawa", country: "Canada", isCapital: true, population: 1433000),
            City(name: "Seattle", country: "United States", isCapital: false, population: 4102100),
            City(name: "Denver", country: "United States", isCapital: false, population: 2897000),
            City(name: "San Francisco", country: "United States", isCapital: false, population: 3318000),
            City(name: "Washington", country: "United States", isCapital: true, population: 5434000),
            City(name: "London", country: "United Kingdom", isCapital: true, population: 95410000),
            City(name: "Glasgow", country: "United Kingdom", isCapital: false, population: 1689000),
            City(name: "Cardiff", country: "United Kingdom", isCapital: false, population: 485000),
            City(name: "Leeds", country: "United Kingdom", isCapital: false, population: 780000),
            City(name: "Edinburgh", country: "United Kingdom", isCapital: false, population: 548000),
            City(name: "Belfast", country: "United Kingdom", isCapital: false, population: 630000),
            City(name: "Lyon", country: "France", isCapital: false, population: 1748000),
            City(name: "Paris", country: "France", isCapital: true, population: 2140000),
            City(name: "Marseille", country: "France", isCapital: false, population: 1620000),
            City(name: "Toulon", country: "France", isCapital: false, population: 584000),
            City(name: "Nice", country: "France", isCapital: false, population: 945000),
            City(name: "Tijuana", country: "Mexico", isCapital: false, population: 2221000),
            City(name: "Mexico City", country: "Mexico", isCapital: true, population: 22085000),
            City(name: "Cancun", country: "Mexico", isCapital: false, population: 998000),
            City(name: "Monterrey", country: "Mexico", isCapital: false, population: 1135000),
            City(name: "Iztapalapa", country: "Mexico", isCapital: false, population: 1815000),
            City(name: "Puebla", country: "Mexico", isCapital: false, population: 1434000),
            City(name: "Chihuahua", country: "Mexico", isCapital: false, population: 809232)
        ]
    }
    
    var fellowCities: [City] {
        Self.all.filter {$0.country == country}
    }
}
