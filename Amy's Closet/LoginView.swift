import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack() {
                Text("Log in or Sign up")
                    .foregroundColor(Color("Color1"))
                TextField("Email", text: self.$email)
                    .padding()
                SecureField("Password", text: self.$password)
                    .padding()
                NavigationLink(destination: SignupView()) {
                        Text("Continue")
                        .foregroundColor(Color("Color1"))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
