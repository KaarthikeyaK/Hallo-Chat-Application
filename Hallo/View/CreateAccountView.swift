//
//  ContentView.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 02/06/23.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State var isLoginMode = true
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack{
                Picker(selection: $isLoginMode, label: Text("Picker Here")) {
                    Text("Login")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                if isLoginMode{
                    
                    LoginView()
                    
                } else {
                    
                    Button {
                        // Upload Profile Image Action
                    } label: {
                        Image(systemName: "person.circle")
                            .font(.system(size: 128))
                            .padding()
                    }
                    .foregroundColor(.black)
                    
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
                    
                    HalloButton(title: "Create Account", background: .blue) {
                        // Create Account Action
                    }
                }
                
                Spacer()
            }
            .navigationTitle("Create Account")
        }
    }
}

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
