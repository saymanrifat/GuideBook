//
//  AttractionRow.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import SwiftUI

struct AttractionRow: View {
    var attraction: Attraction
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(15)   
            
            Text(attraction.name)
                .bold()
                .font(.largeTitle)
            Text(attraction.summary)
                .multilineTextAlignment(.leading)
        }
    }
    
}

#Preview {
    AttractionRow(attraction: DataService().getData()[0].attractions[0])
}
