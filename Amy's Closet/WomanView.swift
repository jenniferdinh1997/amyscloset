import SwiftUI

struct WomanView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: CategoryView())
                    {
                        Text("Coats & Jackets")
                    }
                }
                
                HStack {
                    Text("Tops")
                }
                
                HStack {
                    Text("Bottoms")
                }
            }
        }
    }
}
