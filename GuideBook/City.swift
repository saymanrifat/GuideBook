//
//  City.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import Foundation

struct City : Identifiable, Decodable{
    let id: UUID = UUID()
    var name: String
    var summary: String
    var imageName: String
    var attractions: [Attraction]
}
