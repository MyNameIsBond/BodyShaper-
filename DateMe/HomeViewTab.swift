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
                    HStack(alignment: .center) {
                        Text("lol")
                        Spacer()
                        Button("See All"){
                            // Lol
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top) {
                            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                VCard()
                                    .frame(width: 300)
                                    .padding(.trailing, 30)
                            }
                        }
                    }
                }.edgesIgnoringSafeArea(.trailing)
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
            Text("Margarita")
                .font(.headline)
            Text("this is one of the best cocktails ever made")
                .multilineTextAlignment(.leading)
                .font(.subheadline)
                .lineLimit(2)
            }
        }
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
