//
//  InputFieldWithIcon.swift
//  swift-ui-screens
//
//  Created by Aakash Jha on 29/03/22.
//

import SwiftUI

struct InputFieldWithIcon: View {
    // for this component to receive state value from its parent view,
    // the variable - textValue in this case - must be decorated with @Binding
    // that attaches it to the state value iin the parent view.
    @Binding var textValue: String
    var placeholderTitle: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "envelope.fill")
                .resizable()
                .frame(width: 30, height: 22)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                
            TextField(placeholderTitle, text: $textValue)
                .padding(10)
        }.padding(15)
            .border(.gray)
    }
}

