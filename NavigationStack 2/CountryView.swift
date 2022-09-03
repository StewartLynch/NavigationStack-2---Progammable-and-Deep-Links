//
// Created for NavigationStack 2
// by Stewart Lynch on 2022-09-02
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct CountryView: View {
    var country: Country
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(country.flag)
                Text(country.name)
            }
            .font(.largeTitle)
            HStack {
                Spacer()
                Text("Population: \(country.population)")
            }
            List(country.cities) { city in
                NavigationLink(value: city) {
                    Text(city.name)
                }
            }
        }
        .padding()
        .navigationTitle("Country")
        .navigationDestination(for: City.self) { city in
            CityView(city: city)
        }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CountryView(country: Country.sample[2])
        }
    }
}
