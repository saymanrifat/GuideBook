//
//  Attraction.swift
//  GuideBook
//
//  Created by Sayman Rifat on 12/24/23.
//

import Foundation

struct Attraction : Identifiable{
    var id: UUID = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName : String
    var latLong: String
}
