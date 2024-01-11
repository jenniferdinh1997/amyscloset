import SwiftUI

struct SearchView: View {
    @Binding var text: String
    @State private var isEditing = false
    
//    @State private var selectedTabIndex = 0
    
    var body: some View {
        NavigationView {
            VStack{
//                HStack {
//                    NavigationLink(destination: WomanView())
//                    {
//                    Text("Women")
//                    }
//                }
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
                
                WomanView()
            }
        }
    }
}
