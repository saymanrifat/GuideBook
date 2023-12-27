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
        ScrollView(showsIndicators: false){
            ForEach(city.attractions){ attraction in
                NavigationLink {
                    DetailsView(attraction: attraction)
                } label: {
                    AttractionRow(attraction: attraction)
                        .padding(.bottom, 50)
                }
                .buttonStyle(.plain)

             
            }
        }.padding(.horizontal)
    }
}

#Preview {
    AttractionView(
        city: DataService().getData()[0])
}
