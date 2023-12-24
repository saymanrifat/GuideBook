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
        Text("Hello, World!")
    }
}

#Preview {
    AttractionRow(attraction: DataService().getData()[0].attractions[0])
}
