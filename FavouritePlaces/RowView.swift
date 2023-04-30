//
//  RowView.swift
//  FavouritePlaces
//
//  Created by Anuj Khurana on 30/4/2023.
//

import SwiftUI

struct RowView: View {
    @State var image = defaultImage
    @ObservedObject var place: Places
    
    var body: some View {
        HStack{
            image.frame(width: 50, height: 50).padding(.leading)
            Text(place.strTitle).font(.title3).bold().padding()
        }
        .task {
            image = await place.getImage()
        }
    }
}
