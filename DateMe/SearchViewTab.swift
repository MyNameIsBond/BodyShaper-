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
    @State var selectedPick = "Exercise"

    func sortOutView() -> AnyView {
        switch selectedPick {
        case "Exercise":
            return AnyView(Tab0())
            case "Diet":
            return AnyView(Diet())
            case "Dolores":
            return AnyView(Tab2())
            case "e":
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
                Text("Exercise").tag("Exercise")
                Text("Diet").tag("Diet")
                    Text("Dolores").tag("Dolores")
                }.padding()
               .pickerStyle(SegmentedPickerStyle())
            sortOutView()
        }
    }
}

struct Diet: View {
    var body: some View {
        GridStack(rows: 4, columns: 2) { row, col in
            VStack(alignment: .leading) {
                Image("food")
                    .resizable()
                    .cornerRadius(5)
                    .aspectRatio(contentMode: .fill)
                Text("R\(row) C\(col)")
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

struct Tab2222pq: View {
    
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
        SearchViewTab(search: .constant(""), selectedPick: "Exercise")
    }
}
