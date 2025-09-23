import SwiftUI

// MARK: User Model
struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
}

struct CustomDataTypesBootcamp: View {
    
    @State var usersLists: [UserModel] = [
        UserModel(displayName: "Kalua", userName: "kalua_45", followerCount: 100),
        UserModel(displayName: "Gora", userName: "gora_75", followerCount: 80),
        UserModel(displayName: "Hero", userName: "hero_hi", followerCount: 300),
        UserModel(displayName: "Pandu", userName: "punda_67", followerCount: 100)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(usersLists) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .fill(.blue.opacity(0.7))
                            .frame(width: 45, height: 45)
                            .overlay(
                                Text(String(user.displayName.prefix(1)))
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Text("\(user.followerCount) followers")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 8)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users List")
        }
    }
}

#Preview {
    CustomDataTypesBootcamp()
}
