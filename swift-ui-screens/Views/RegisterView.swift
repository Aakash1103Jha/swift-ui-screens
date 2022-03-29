//
//  RegisterView.swift
//  swift-ui-screens
//
//  Created by Aakash Jha on 29/03/22.
//

import SwiftUI


 struct RegisterView: View {
     @State private var firstName: String = ""
     @State private var lastName: String = ""
     @State private var email: String = ""
     @State private var password: String = ""
     @State public var error: String = ""

     func onSubmitData() {
         print("First Name: \(firstName), Last Name: \(lastName), Email: \(email), Password: \(password)")
     }
     var body: some View {
         ScrollView {
             ZStack {
                 VStack(alignment: .center, spacing: 15, content: {
                     Spacer()
                     Group {
                         Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(100)
                         Text("Hey there!")
                            .font(.system(.largeTitle).bold())
                         Text("Happy to see you here")
                     }
                     Spacer()
                     Group {
                         TextField("Jane", text: $firstName)
                         TextField("Doe", text: $lastName)
                         TextField("janedoe@awesome.com", text: $email)
                            .textInputAutocapitalization(.never)
                            .keyboardType(.emailAddress)
                         SecureField("Janedoe@123", text: $password)
                     }
                     Text(error).foregroundStyle(.red)
                     Spacer()
                     VStack {
                         Button("Register", action: {onSubmitData()})
                            .frame(width: 320, height: 20, alignment: .center)
                            .scenePadding()
                            .background(.black)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                         Button("Login to existing account", action: {})
                         .scenePadding()
                         .foregroundColor(.black)
                         .font(.system(.callout))
                     }
                     Spacer()
                 }).offset(y: 40)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .scenePadding()
             }
         }.edgesIgnoringSafeArea(.all)
         
     }
 }

 struct RegisterView_Previews: PreviewProvider {
     static var previews: some View {
         RegisterView()
     }
 }
