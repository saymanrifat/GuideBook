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
        
        VStack(spacing: 20){
            
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    Text(attraction.name)
                        .font(.title)
                        .bold()
                    Text(attraction.longDescription)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                }
                
            }.padding(.horizontal)
            
        }.ignoresSafeArea()
        
        
    }
}

#Preview {
    DetailsView(attraction: DataService().getData()[0].attractions[0])
}
