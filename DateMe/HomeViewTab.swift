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
            VStack {
                HStack {
                    Text("Shoulders")
                    Spacer()
                    Button(action: seeAll) {
                        Text("see all")
                    }
                }.padding(.horizontal)
                HStack {
                    VCard()
                }
            }.edgesIgnoringSafeArea(.top)
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
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                VStack(alignment:.leading) {
                    Image("cocktail1").resizable()
                        .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, minHeight: 100, idealHeight: 150, maxHeight: 200)
                    Text("Hello").background(Color.green)
                }.background(Color.red)
                
                VStack(alignment:.leading) {
                   Image("cocktail1").resizable()
                       .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, minHeight: 100, idealHeight: 150, maxHeight: 200)
                   Text("Hello").background(Color.green)
               }.background(Color.red)
                    
                    VStack(alignment:.leading) {
                        Image("cocktail1").resizable()
                            .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, minHeight: 100, idealHeight: 150, maxHeight: 200)
                        Text("Hello").background(Color.green)
                    }.background(Color.red)
                    
                    VStack(alignment:.leading) {
                        Image("cocktail1").resizable()
                            .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, minHeight: 100, idealHeight: 150, maxHeight: 200)
                        Text("Hello").background(Color.green)
                    }.background(Color.red)
                }
            }.background(Color.blue)
        }.padding(.leading)
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
