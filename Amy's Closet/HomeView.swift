import SwiftUI

struct HomeView: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        VStack{
            HStack {
                TextField("Search", text: $text)
                    .cornerRadius(8)
                    .onTapGesture {
                        self.isEditing = true
                    }
                
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
                    }) {
                        Text("Cancel")
                    }
                }
            }
            
            Text("New Arrivals")
            
            VStack{
                //Image
                Text("product 1")
                Text("$20.99")
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray)
            )
            
            Text("Trending Now")
            
            VStack{
                //Image
                Text("product 1")
                Text("$20.99")
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray)
            )
        }
    }
}
