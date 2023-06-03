//
//  ContentView.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 02/06/23.
//

import SwiftUI


struct HomeView: View {
    
    @State var isLoginMode = false
    
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
                    CreateAccountView()
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
