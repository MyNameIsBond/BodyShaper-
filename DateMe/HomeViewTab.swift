
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
                   ForEach(1...8, id: \.self) { n in
                    VStack(alignment:.leading) {
                   Image("shoulders\(n)").resizable()
                       .cornerRadius(4)
                   Text("shoulders\(n)")
                       .font(.footnote)
                       .fontWeight(.semibold)
                   Text("shoulders\(n)")
                       .font(.footnote)
                       .fontWeight(.light)
                   }.frame(minWidth: 200, idealWidth: 200, maxWidth: 250, minHeight: 200, idealHeight: 200, maxHeight: 250)
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

struct HorizontalView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Shoulders")
                    .fontWeight(.bold)
                    .font(.headline)
                Spacer()
                NavigationLink(destination: SeeAllGrid()) {
                    Text("See All")
                }
            }.padding(.horizontal)
            HStack {
                VCard()
            }
        }
    }
}
