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
                VStack {
                    ZStack {
                        Image("legs1").resizable()
                        VStack {
                        Text("this is smarta")
                        }
                    }
                    }.padding().frame(width: 100, height: 100)
        }.background(Color.black)
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
