//
//  SearchViewTab.swift
//  DateMe
//
//  Created by Tony Hajdini on 12/01/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI

struct SearchViewTab: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @Binding var search: String
    @State var selectedPick = 1
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search Exercise", text: $search)
            }
            Form {
                Picker(selection: $selectedPick, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    ForEach(0 ..< colors.count) {
                       Text(self.colors[$0])
                    }
                }
            }
        }
    }
}
struct SearchViewTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewTab(search: .constant(""), selectedPick: 1)
    }
}
