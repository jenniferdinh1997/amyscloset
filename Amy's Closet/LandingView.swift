import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationView{
            VStack() {
                Text("Amy's Closet")
                    .font(.title)
                Text("Buy hand picked high end pieces for low prices")
                Button(action: {}) {
                    Text("Continue with Apple")
                        .padding()
                        .background(Color.black)
                        .cornerRadius(15.0)
                }
                Button(action: {}) {
                    Text("Continue with Google")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                Button(action: {}) {
                    Text("Continue with Facebook")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                NavigationLink(destination: LoginView()) {
                    Text("Sign up with email")
                        .underline()
                }
                HStack() {
                    Text("Already have an account?")
                    NavigationLink(destination: LoginView()) {
                        Text("Log in!")
                            .underline()
                    }
                }
            }
        }
    }
}

#Preview {
    LandingView()
}

