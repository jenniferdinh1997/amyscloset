import SwiftUI

struct SignupView: View {
    @State private var first = ""
    @State private var last = ""
    
    var body: some View {
        VStack() {
            Text("What's your name?")
            TextField("First Name", text: self.$first)
                .padding()
            TextField("Last Name", text: self.$last)
                .padding()
            Button(action: {}) {
                Text("Complete")
            }
        }
    }
}

#Preview {
    SignupView()
}

