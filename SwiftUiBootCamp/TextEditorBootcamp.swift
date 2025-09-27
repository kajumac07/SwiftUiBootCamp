import SwiftUI

struct TextEditorBootcamp: View {
    
    @State private var notes: String = "Write something here..."
    @State private var charLimit: Int = 200
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Notes")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            // Multiline TextEditor
            TextEditor(text: $notes)
                .frame(height: 150)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .padding(.horizontal)
//                .onChange(of: notes) { newValue in
//                    // Character limit
//                    if newValue.count > charLimit {
//                        notes = String(newValue.prefix(charLimit))
//                    }
//                }
            
            // Character count
            Text("\(notes.count)/\(charLimit) characters")
                .font(.caption)
                .foregroundStyle(notes.count == charLimit ? .red : .gray)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
