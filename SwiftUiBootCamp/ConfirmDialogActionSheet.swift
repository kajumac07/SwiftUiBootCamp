import SwiftUI

struct ConfirmationDialogBootcamp: View {

    @State private var showDialog: Bool = false
    @State private var selectedAction: PostAction? = nil

    var body: some View {
        VStack(spacing: 20) {
            // Fake Post UI
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.3))
                .frame(height: 200)
                .overlay(
                    VStack {
                        HStack {
                            Text("Instagram Post")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                                showDialog = true
                            }) {
                                Image(systemName: "ellipsis")
                                    .font(.title2)
                            }
                        }
                        .padding()
                        Spacer()
                    }
                )

            if let action = selectedAction {
                Text("Selected Action: \(action.rawValue)")
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .confirmationDialog(
            "Post Options",
            isPresented: $showDialog,
            titleVisibility: .visible
        ) {
            Button(PostAction.share.rawValue) {
                selectedAction = .share
            }
            Button(PostAction.report.rawValue, role: .destructive) {
                selectedAction = .report
            }
            Button(PostAction.delete.rawValue, role: .destructive) {
                selectedAction = .delete
            }
            Button("Cancel", role: .cancel) {}
        }
    }

    // MARK: - Enum
    enum PostAction: String {
        case share = "Share"
        case report = "Report"
        case delete = "Delete"
    }
}

#Preview {
    ConfirmationDialogBootcamp()
}
