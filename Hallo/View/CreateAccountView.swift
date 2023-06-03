//
//  CreateAccountView.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 03/06/23.
//

import SwiftUI

struct CreateAccountView: View {
    
    @StateObject var viewModel = CreateAccountViewViewModel()
    
    var body: some View {
        VStack{
            Button {
                // Image Button
            } label: {
                ZStack{
                    Image(systemName: "person.fill")
                        .font(.system(size: 64))
                        .padding()
                    Image(systemName: "circle")
                        .font(.system(size: 128))
                }
            }
            .foregroundColor(.black)
            
            TextField("Email", text: $viewModel.email)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .padding(12)
                .autocapitalization(.none)
                .background(Color(hex: 0xf7f5f5))
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.width - 40)
            SecureField("Password", text: $viewModel.password)
                .padding(12)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .background(Color(hex: 0xf7f5f5))
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.width - 40)
            
            HalloButton(title: "Create Account", background: .blue) {
                viewModel.createAccount()
            }
            Text(viewModel.errorMessage)
                .padding()
                .foregroundColor(.red)
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
