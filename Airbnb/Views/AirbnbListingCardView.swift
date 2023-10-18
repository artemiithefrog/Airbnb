//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by artemiithefrog . on 17.10.2023.
//

import SwiftUI

struct AirbnbListingCardView: View {
    
    let model: AirbnbListing
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .scaledToFit()
                .clipped()
            
            VStack {
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(model.description ?? "Listing")
                    .lineLimit(3)
                    .foregroundColor(Color(.secondaryLabel))
                    .font(.body)
            }
        }
    }
}
