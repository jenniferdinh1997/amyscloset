import SwiftUI

struct CategoryView: View {
    @State private var selectedTab: Tab?
    @State private var searchText = ""
    
    var body: some View {
        Text("category")
        HStack {
            Button(action: {
                self.selectedTab = .all
            }) {
                Text("All")
            }
            .padding()
            
            Button(action: {
                self.selectedTab = .shirts
            }) {
                Text("Shirts")
            }
            .padding()
            
            Button(action: {
                self.selectedTab = .sweaters
            }) {
                Text("Sweaters")
            }
            .padding()
        }
        
        if let selectedTab = selectedTab {
            switch selectedTab {
            case .all:
                Text("all content")
            case .shirts:
                Text("shirts content")
            case .sweaters:
                Text("sweater content")
            }
        }
        
//        TabView {
//            HomeView(text: $searchText)
//                .tabItem {
//                    Image(systemName: "bag")
//                    Text("Shop")
//                }
//            SearchView(text: $searchText)
//                .badge(2)
//                .tabItem {
//                    Image(systemName: "tag")
//                    Text("Shop")
//                }
//            CartView()
//                .tabItem {
//                    Image(systemName: "cart")
//                    Text("Cart")
//                }
//            ProfileView()
//                .tabItem {
//                    Label("Profile", systemImage: "person.crop.circle.fill")
//                }
//        }
//        .padding()
    }
}

enum Tab {
    case all
    case shirts
    case sweaters
}

#Preview {
    CategoryView()
}
