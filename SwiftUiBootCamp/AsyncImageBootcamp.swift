//
//  AsyncImageBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 27/09/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView() // jab tak load nahi hoti
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            case .failure(_):
                Image(systemName: "photo.fill") // agar load fail ho jaye
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            @unknown default:
                EmptyView()
            }
        }
    }
}


#Preview {
    AsyncImageBootcamp()
}
