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
            ScrollView {
                VCard()
                 VCard()
                 VCard()
            }
            
        }
    }
}

// The Vertical view in Home
// Image - Url
// Title - String
// Subheadline - String

struct VCard: View {
    var body: some View {
        VStack {
            HStack {
                Text("Shoulders")
                Spacer()
                Text("see all")
            }.padding()
            ScrollView(.horizontal,showsIndicators: false) {
                 VStack{
            Image("cocktail1").resizable()
                Text("this is a cocktail very cook")
                }.frame(height: 100)
                    .background(Color.red)
            }.frame(width: 100,height: 200)
                .background(Color.yellow)
        }
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
