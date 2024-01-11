import SwiftUI

struct ContentView: View {
//    @State var currentTab: Tab = .Home
//    
//    init() {
//        UITabBar.appearance().isHidden = true
//    }
    @State private var searchText = ""
    
    var body: some View {
        TabView {
            HomeView(text: $searchText)
                .tabItem {
                    Image(systemName: "bag")
                    Text("Shop")
                }
            SearchView(text: $searchText)
                .badge(2)
                .tabItem {
                    Image(systemName: "tag")
                    Text("Shop")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .padding()
    }
}

//enum Tab: String, CaseIterable {
//    case Home = "house"
//    case Search = "magnifyingglass.circle"
//    case Cart = "bag"
//    case Profile = "person"
//    
//    var Tabname: String {
//        switch self {
//        case .Home:
//            return "Home"
//        case .Search:
//            return "Search"
//        case .Cart:
//            return "Cart"
//        case .Profile:
//            return "Profile"
//        }
//    }
//}

#Preview {
    ContentView()
}
