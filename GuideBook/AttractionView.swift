//
//  AttractionView.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import SwiftUI

struct AttractionView: View {
    var city : City
    var body: some View {
        ScrollView{
            ForEach(city.attractions){ attraction in
                NavigationLink {
                    DetailsView(attraction: attraction)
                } label: {
                    Text(attraction.name)
                }

             
            }
        }
    }
}

#Preview {
    AttractionView(
        city: DataService().getData()[0])
}
