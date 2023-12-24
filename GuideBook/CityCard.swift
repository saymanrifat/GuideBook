//
//  CityCard.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import SwiftUI

struct CityCard: View {
    var city: City
    var body: some View {
        ZStack{
            
            
            Rectangle()
                .background {
                    Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                Text(city.summary)
                    .multilineTextAlignment(.leading)
                    
            }
            .padding()
            .foregroundColor(.white)
        }.frame(height: 400)
    }
}

#Preview {
    CityCard(city: DataService().getData()[0])
}
