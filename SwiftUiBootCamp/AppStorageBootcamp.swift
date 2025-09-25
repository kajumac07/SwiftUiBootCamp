import SwiftUI

struct AppStorageBootcamp: View {
    
    // 👇 Ye value UserDefaults me save hogi key = "username"
    @AppStorage("username") var currentUserName: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(currentUserName.isEmpty ? "Add name Here.." : currentUserName)
                .font(.title2)
                .bold()
            
            Button("Save".uppercased()) {
                currentUserName = "Darling"  // 👈 Save directly
            }
            
            Button("Clear".uppercased()) {
                currentUserName = ""       // 👈 Clear value
            }
        }
        .padding()
    }
}

#Preview {
    AppStorageBootcamp()
}
