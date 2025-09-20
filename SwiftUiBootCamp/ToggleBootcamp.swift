//
//  ToggleBootcamp.swift
//  SwiftUiBootCamp
//
//  Created by Atul Tiwari on 20/09/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsON: Bool = false
    
    var body: some View {
        Toggle(
            isOn: $toggleIsON) {
            Text("Switch The Button")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            .padding(30)
    }
}

#Preview {
    ToggleBootcamp()
}
 
