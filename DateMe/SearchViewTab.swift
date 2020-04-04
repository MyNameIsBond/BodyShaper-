//
//  SearchViewTab.swift
//  DateMe
//
//  Created by Tony Hajdini on 12/01/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI

struct SearchViewTab: View {
    
    @Binding var search: String
    @State var selectedPick = 0

    func sortOutView() -> AnyView {
        switch selectedPick {
        case 0:
            return AnyView(Tab0())
            case 1:
            return AnyView(Diet())
            case 2:
            return AnyView(Tab2())
        default:
            return AnyView(Tab0())
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(Color.gray)
                TextField("Search \(selectedPick)", text: $search)
                }.padding(8)
                .overlay(RoundedRectangle(cornerRadius: 14).stroke(Color.gray, lineWidth: 1))
            .padding()
            Picker("Numbers", selection: $selectedPick) {
                    Text("Exercise").tag(0)
                Text("Diet").tag(1)
                    Text("Dolores").tag(2)
                }.padding()
               .pickerStyle(SegmentedPickerStyle())
            sortOutView()
        }
    }
}

struct Diet: View {
    var body: some View {
        List {
            ForEach(1...7, id: \.self) { ee in
                HStack {
                    Image("cocktail1")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("Diet \(ee)")
                    Text("asd")
                }
            }
        }
    }
}

struct Tab0: View {
    var body: some View {
        List {
            ForEach(1...7, id: \.self) { ee in
                Text("tab\(ee)")
            }
        }
    }
}

struct Tab1: View {
    var body: some View {
       List {
            Text("tab1")
            Text("tab1")
            Text("tab1")
            Text("tab1")
            Text("tab1")
            Text("tab1")
            
        }
    }
}

struct Tab2: View {
    var body: some View {
       List {
            Text("tab2")
            Text("tab2")
            Text("tab2")
            Text("tab2")
            Text("tab2")
            Text("tab2")
            
        }
    }
}

struct TabinView: View {
    let selectedPick: Int
    
    var body: some View {
        Text("\(self.selectedPick)")
    }
}

struct SearchViewTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewTab(search: .constant(""), selectedPick: 1)
    }
}
