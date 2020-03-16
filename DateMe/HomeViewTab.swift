//
//  HomeViewTab.swift
//  DateMe
//
//  Created by Tony Hajdini on 12/01/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI

struct HomeViewTab: View {
    var body: some View {
        NavigationView() {
            HStack {
                Text("Shoulders")
                Spacer()
                Text("see all")
            }.padding()
            ScrollView {
                VCard()
            }
            .padding()
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

// The Vertical view in Home
// Image - Url
// Title - String
// Subheadline - String

struct VCard: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                 VStack {
                
                Image("cocktail1").resizable()
                Text("this is a cocktail very cook")
                }.frame(height: 100)
                    .background(Color.red)
            }.frame(height: 200)
                .padding(.leading)
                .background(Color.yellow)
        }.frame(height: 100)
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
