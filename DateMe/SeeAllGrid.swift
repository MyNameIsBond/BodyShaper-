

import SwiftUI

struct SeeAllGrid: View {
    let numberOfLegs = ["spider", "ant", "cat"]
    var body: some View {
        NavigationView {
        List {
        HStack {
            Image("cocktail1")
                .resizable()
                .frame(minWidth: 50, idealWidth: 50, maxWidth: 50, minHeight: 50, idealHeight: 50, maxHeight: 50)
            Text("Cocktail")
            
                }
            }
        .navigationBarHidden(true)
        .navigationBarTitle(Text("Shoulders"))
        .navigationBarItems(trailing:
                       Button("Help") {
                           print("Help tapped!")
                       }
                   )
            
        }
         
    }
}

struct SeeAllGrid_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllGrid()
    }
}
