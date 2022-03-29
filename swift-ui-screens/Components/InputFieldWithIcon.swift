//
//  InputFieldWithIcon.swift
//  swift-ui-screens
//
//  Created by Aakash Jha on 29/03/22.
//

import SwiftUI

struct InputFieldWithIcon: View {
    @State var stateVar: String = ""
    var placeholderTitle: String = ""
    var body: some View {
        HStack {
            Image(systemName: "envelope.fill")
                .resizable()
                .frame(width: 30, height: 22)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                
            TextField(placeholderTitle, text: $stateVar)
                .padding(10)
        }.padding(15)
            .border(.gray)
    }
}

struct InputFieldWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldWithIcon()
            .previewLayout(.sizeThatFits)
            
    }
}
