//
//  HomeViewTab.swift
//  DateMe
//
//  Created by Tony Hajdini on 12/01/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI

struct HomeViewTab: View {
    
    @State var photos: [Photos] = []

    private func seeAll() {
        print("See All")
    }
    
    var body: some View {
        NavigationView() {
            HStack {
            Text("Shoulders")
            Spacer()
            Button(action: seeAll) {
                Text("see all")
            }
            }.padding()
            ScrollView {
                ForEach(photos){ photo in
                    VCard(photos: photo)
                }
            }
            .padding()
    }.edgesIgnoringSafeArea(.top)
    }
}



// The Vertical view in Home
// Image - Url
// Title - String
// Subheadline - String

struct VCard: View {
    let photos: Photos
    
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                 VStack {
                
                Image("cocktail1").resizable()
                    Text(photos.title)
                }.frame(height: 100)
                    .background(Color.red)
            }.frame(height: 200)
                .padding(.leading)
                .background(Color.yellow)
        }.frame(height: 100, maxWidth: 100)
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
