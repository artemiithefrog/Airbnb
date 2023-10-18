//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by artemiithefrog . on 17.10.2023.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .frame(width: proxy.frame(in: .global).width, height: proxy.frame(in: .global).width)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    
                    if let price = model.price {
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))")
                    }
                    
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Summary: \(model.summary ?? ""))")
                        .padding()
                    Text("House rules: \(model.house_rules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    
                    Text("About your host")
                        .font(.title)
                        .bold()
                    
                    HStack {
                        AsyncImage(url: URL(string: model.host_picture_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        
                        Text(model.host_name)
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting since: " + model.host_since)
                }
                .frame(maxWidth: proxy.frame(in: .local).width)
            }
        }
        .navigationTitle(model.name ?? "Listing")
    }
}
