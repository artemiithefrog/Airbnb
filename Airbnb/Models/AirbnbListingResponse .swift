//
//  AirbnbListingResponse .swift
//  Airbnb
//
//  Created by artemiithefrog . on 17.10.2023.
//

import Foundation

struct AirbnbListingResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
