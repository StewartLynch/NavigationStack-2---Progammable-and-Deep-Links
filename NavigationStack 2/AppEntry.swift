//
// Created for NavigationStack 2
// by Stewart Lynch on 2022-08-30
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var router = Router()
    var body: some Scene {
        WindowGroup {
            CountryListView()
                .environmentObject(router)
                .onOpenURL { url in
                    guard let scheme = url.scheme, scheme == "navStack" else { return }
                    guard let country = url.host else { return }
                    if let foundCountry = Country.sample.first(where: {$0.name == country}) {
                        router.reset()
                        router.path.append(foundCountry)
                        if url.pathComponents.count == 2 {
                            let city = url.lastPathComponent
                            if let foundCity = foundCountry.cities.first(where: {$0.name == city}) {
                                router.path.append(foundCity)
                            }
                        }
                    }
                }
        }
    }
}
