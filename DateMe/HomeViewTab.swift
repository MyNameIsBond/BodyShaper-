
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
                            .cornerRadius(4)
                        Text("1a")
                            .font(.caption)
                    }
                    VStack(alignment:.leading) {
                        Image("cocktail1").resizable()
                            .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, minHeight: 100, idealHeight: 150, maxHeight: 200)
                            .cornerRadius(4)
                        Text("2a")
                            .font(.caption)
                    }
                   
                }.padding(.leading)
            }
        }
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}
