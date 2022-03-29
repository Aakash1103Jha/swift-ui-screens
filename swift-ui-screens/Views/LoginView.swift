//
//  LoginView.swift
//  swift-ui-screens
//
//  Created by Aakash Jha on 29/03/22.
//

import SwiftUI


struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State public var error: String = ""

    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 15, content: {
                Spacer()
                Group {
                    Image(systemName: "person.circle.fill")
                        .resizable().frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(100)
                    Text("Welcome Back!")
                        .font(.system(.largeTitle)
                        .bold())
                Text("Happy to see you again")
                }
                Spacer()
                Group {
                    TextField("Email Address", text: $email)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.emailAddress)
                    SecureField("Password", text: $password)
                }
                Button("Forgot Password", action: {})
                    .foregroundColor(.green)
                Spacer(minLength: 10)
                Text(error).foregroundStyle(.red)
                Spacer()
                VStack {
                    Button("Login", action: {})
                        .frame(width: 320, height: 20, alignment: .center)
                        .scenePadding().background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    Button("Create Account", action: {})
                        .scenePadding()
                        .foregroundColor(.black)
                        .font(.system(.callout))
                }
                Spacer()
            }).textFieldStyle(RoundedBorderTextFieldStyle())
                .scenePadding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            
    }
}
