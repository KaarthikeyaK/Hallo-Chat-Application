//
//  LoginViewViewModel.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 03/06/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    func loginUser(){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                let errorCode = (error as NSError).code
                switch errorCode {
                case 17009:
                    self.errorMessage = "Invalid Password"
                case 17011:
                    self.errorMessage = "Invalid Username"
                default:
                    self.errorMessage = "Unknown Error"
                }
                return
            }
            print("Successfully Logged in.")
        }
    }
}
