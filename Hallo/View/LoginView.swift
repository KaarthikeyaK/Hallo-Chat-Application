//
//  LoginView.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 02/06/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        Button {
            // Upload Profile Image Action
        } label: {
            VStack{
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled()
                    .padding(12)
                    .autocapitalization(.none)
                    .background(Color(hex: 0xf7f5f5))
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width - 40)
                SecureField("Password", text: $password)
                    .padding(12)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .background(Color(hex: 0xf7f5f5))
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width - 40)
                
                HalloButton(title: "Login", background: .blue) {
                    // Create Account Action
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
