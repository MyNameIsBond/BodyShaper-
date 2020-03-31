//
//  ExerciseView.swift
//  DateMe
//
//  Created by Tony Hajdini on 26/03/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI

struct ExerciseView: View {
    
    var body: some View {
        VStack {
            ListView()
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}

struct ListView: View {
    var body: some View {
        List {
            ListTitle()
        }
    }
}
    
struct ListTitle: View {
    var body: some View {
        VStack{
            HStack {
                Image("legs2").resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(4)
                VStack(alignment: .leading) {
                    Text("Legs")
                        .font(.title)
                        .bold()
                    Text("Legs")
                        .font(.subheadline)
                    Spacer()
                    Button(action: {
                        print("Hello Motherfucker")
                    }) {
                        HStack{
                            Image(systemName: "plus")
                                .foregroundColor(Color.white)
                            Text("ADD")
                                .foregroundColor(Color.white)
                                .font(.subheadline)
                        }.padding(.horizontal)
                            .padding(.vertical,5)
                    }
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(.infinity)
                }.padding(.leading)
                Spacer()
                VStack {
                    Spacer()
                    Button(action: {
                        print("Hello")
                    }) {
                        Image(systemName: "calendar.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.blue)
                    }
                }
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Stars")
                        .font(.title)
                    Text("Difficulty")
                        .font(.subheadline)
                }
                Spacer()
                VStack {
                    Text("Stars")
                        .font(.title)
                    Text("Difficulty")
                        .font(.subheadline)
                }
            }.padding(.vertical)
        }
    }
}
