//
//  TextFieldBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 19/09/25.
//

import SwiftUI

struct TextFieldBootcamp: View {

    @State var textFieldText: String = ""
    @State var passFieldText: String = ""
    @State var dataArray : [String] = []

    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                CustomTextFieldView(textFieldText: $textFieldText)

                Button {
                    //do something here
                    if textAppropriate() {
                        saveText()
                    }
                    
                } label: {
                    Text("Login")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background( textAppropriate() ? .red : .gray )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 20)

                }
                .disabled(textAppropriate() ? false : true)
                
                //show all saved value here
                
                ForEach(dataArray, id: \.self) { Index in
                    Text(Index)
                }
                
                
            }
            
            .navigationTitle("Text Field Bootcamp")
        }
    }
    
    // text validator
    func textAppropriate() -> Bool {
        if textFieldText.count >= 5 {
            return true
        }
        return false
    }
    
    //MARK: save text function
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}

//MARK: CustomTextField


struct CustomTextFieldView: View {

    @Binding var textFieldText: String

    var body: some View {
        TextField("Enter Your email", text: $textFieldText)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.2))
            )
            .foregroundStyle(.red)
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.horizontal, 20)
    }
}
