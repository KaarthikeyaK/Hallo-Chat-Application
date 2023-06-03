//
//  LoginView.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 02/06/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        
        Button {
            // Upload Profile Image Action
        } label: {
            VStack{
                TextField("Email", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled()
                    .multilineTextAlignment(.leading)
                    .padding(12)
                    .autocapitalization(.none)
                    .background(Color(hex: 0xf7f5f5))
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width - 40)
                SecureField("Password", text: $viewModel.password)
                    .padding(12)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .multilineTextAlignment(.leading)
                    .background(Color(hex: 0xf7f5f5))
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width - 40)
                
                HalloButton(title: "Login", background: .blue) {
                    viewModel.loginUser()
                }
                
                Text(viewModel.errorMessage)
                    .padding()
                    .foregroundColor(.red)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
