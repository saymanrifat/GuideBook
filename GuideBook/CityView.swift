//
//  ContentView.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import SwiftUI

struct CityView: View {
    @State var cities = [City]()
    var dataService = DataService()
    var body: some View {
        
        NavigationStack{
            VStack {
                ForEach(cities){ city in
                    
                    NavigationLink {
                        AttractionView(city: city)
                    } label: {
                        Text(city.name)
                    }
                }
            }
            .padding()
            .onAppear(){
                cities = dataService.getData()
            }
        }
    }
}

#Preview {
    CityView()
}
