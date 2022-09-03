//
// NavStackIntro1
// by Stewart Lynch on 2022-08-30
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct CountryListView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        NavigationStack(path: $router.path) {
            List(Country.sample) { country in
                NavigationLink(value: country) {
                    HStack {
                        Text(country.flag)
                        Text(country.name)
                    }
                }
            }
            .navigationDestination(for: Country.self) { country in
                CountryView(country: country)
            }
            .navigationTitle("Countries")
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
            .environmentObject(Router())
    }
}
