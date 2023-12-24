//
//  DetailsView.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import SwiftUI

struct DetailsView: View {
    var attraction: Attraction
    var body: some View {
        ScrollView{
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text(attraction.name)
                .font(.title)
            Text(attraction.longDescription)
        }
        
    }
}

#Preview {
    DetailsView(attraction: DataService().getData()[0].attractions[0])
}
