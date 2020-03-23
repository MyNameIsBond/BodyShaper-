
import SwiftUI

struct HomeViewTab: View {
    
    @State var photos: [Photos] = []

    private func seeAll() {
        print("See All")
    }
    
    var body: some View {
        NavigationView() {
        ScrollView {
            HorizontalView()
        }
        .navigationBarTitle("Exercises", displayMode: .automatic)
        
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
            ScrollView(.horizontal,showsIndicators: true) {
                HStack {
                    VStack(alignment:.leading) {
                        Image("cocktail1").resizable()
                            .cornerRadius(4)
                        Text("Cocktail Dolores")
                        Text("Cocktail Dolores")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }.frame(minWidth: 200, idealWidth: 200, maxWidth: 250, minHeight: 200, idealHeight: 200, maxHeight: 250)
                   
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

struct HorizontalView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Shoulders")
                    .fontWeight(.bold)
                Spacer()
                Button(action: {
                    print("See All")
                }) {
                    Text("see all")
                }
            }.padding(.horizontal)
            HStack {
                VCard()
            }
        }
    }
}
