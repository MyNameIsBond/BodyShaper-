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
                VStack {
                    HStack {
                        Text("lol")
                        Spacer()
                        Button("See All"){
                            // Lol
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top) {
                            ForEach(0 ..< 5) { item in
                                VCard()
                            }
                        }.padding(.leading)
                        
                    }
                }.navigationBarTitle("Home")
                
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
    VStack(alignment: .leading, spacing: 16.0) {
    Image("cocktail1")
    .resizable()
    .renderingMode(.original)
    .aspectRatio(contentMode: .fill)
    .frame(width: 250, height: 170)
    .cornerRadius(10)
        VStack(alignment: .leading, spacing: 5.0) {
            Text("Margarita this is one of the best cocktails ever made this is one o this is one of the best cocktails ever made this is one o ")
                .font(.headline)
                .lineLimit(1)
            Text("this is one of the best cocktails ever made this is one of the best cocktails ever made Ela re mounaki")
                .font(.subheadline)
                .lineLimit(1)
                
        }
        }
    .background(Color.pink)
    .frame(width: 250, height:300)
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
