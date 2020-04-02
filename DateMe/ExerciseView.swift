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
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct ListView: View {
    var body: some View {
        List {
            ListTitle()
            HStack {
                Text("1st set should be 1 minute(s)")
                Spacer()
                Button(action: {
                    print("print")
                }) {
                   Image(systemName: "plus")
                   .foregroundColor(Color.blue)
                   }
            }.padding(.vertical)
            HStack {
                Text("2nd set should be 2 minute(s)")
                Spacer()
                Button(action: {
                    print("asd")
                }) {
                   Image(systemName: "plus")
                   .foregroundColor(Color.blue)
                   }
            }.padding(.vertical)
            HStack {
               Text("3rd set should be 2 minute(s)")
               Spacer()
                Button(action: {
                    print("oti nane")
                }) {
                    Image(systemName: "plus")
                    .foregroundColor(Color.blue)
                }
               }.padding(.vertical)
        }
    }
}
    
struct ListTitle: View {
    var body: some View {
        VStack {
            HStack {
                Image("legs4").resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(4)
                VStack(alignment: .leading) {
                    Text("Vale to top megale")
                        .font(.title)
                        .bold()
                    Text("Legs")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                    HStack {
                        Button(action: {
                            print("Hello Motherfucker")
                        }) {
                            HStack{
                                Image(systemName: "plus")
                                    .font(.subheadline)
                                    .foregroundColor(Color.white)
                                    .font(Font.title.weight(.bold))
                                Text("ADD")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .font(.subheadline)
                            }.padding(.horizontal)
                                .padding(.vertical,5)
                        }
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(.infinity)
                        Spacer()
                        Button(action: {
                            print("Hello")
                        }) {
                            Image(systemName: "calendar.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.blue)
                        }
                    }
                }.padding(.leading)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Stars")
                        .font(.title)
                    Text("Difficulty")
                        .font(.subheadline)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("30 Reps")
                        .font(.title)
                    Text("3 sets")
                        .font(.subheadline)
                }
            }.padding(.vertical)
        }.padding(.vertical)
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView().environment(\.colorScheme, .light)
    }
}
