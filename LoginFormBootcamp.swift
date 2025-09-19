import SwiftUI

struct LoginFormBootcamp: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 20,) {
            Spacer()
            // Title
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Email Field
            TextField("Enter your email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.2))
                )
                .padding(.horizontal, 20)
            
            // Password Field
            SecureField("Enter your password", text: $password)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.2))
                )
                .padding(.horizontal, 20)
            
            // Login Button
            Button(action: {
                if email.isEmpty || password.isEmpty {
                    showAlert = true
                } else {
                    print("Email: \(email), Password: \(password)")
                    // here you can call API or authentication logic
                }
            }, label: {
                Text("Login")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 20)
            })
            
            Spacer()
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Missing Info"),
                message: Text("Please enter both email and password."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    LoginFormBootcamp()
}
