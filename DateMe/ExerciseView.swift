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
            List {
                HStack {
                    Image("legs2").resizable()
                        .frame(width: 150, height: 150)
                    VStack {
                    Text("Legs")
                        .font(.title)
                        .bold()
                        Button(action: {
                            print("Hello")
                        }) {
                            HStack{
                            Text("Add")
                            } .padding(.horizontal)
                        }.background(Color.blue)
                        .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
