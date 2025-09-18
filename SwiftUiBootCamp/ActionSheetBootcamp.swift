//
//  ActionSheetBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 18/09/25.
//
import SwiftUI

struct ActionSheetBootcamp: View {

    @State private var showActionSheet: Bool = false
    @State private var selectedAction: PostAction? = nil

    var body: some View {
        VStack(spacing: 20) {
            // Fake Post
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
                                showActionSheet = true
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
        .actionSheet(isPresented: $showActionSheet) {
            actionSheet
        }
    }

    // MARK: - Enum
    enum PostAction: String {
        case share = "Share"
        case report = "Report"
        case delete = "Delete"
    }

    // MARK: - Action Sheet Builder
    private var actionSheet: ActionSheet {
        ActionSheet(
            title: Text("Post Options"),
            message: Text("Choose an action for this post"),
            buttons: [
                .default(Text(PostAction.share.rawValue)) {
                    selectedAction = .share
                },
                .destructive(Text(PostAction.report.rawValue)) {
                    selectedAction = .report
                },
                .destructive(Text(PostAction.delete.rawValue)) {
                    selectedAction = .delete
                },
                .cancel(),
            ]
        )
    }
}

#Preview {
    ActionSheetBootcamp()
}
