//
//  CreateUserViewViewModel.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 03/06/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class CreateAccountViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    public func createAccount(){
        
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Failed to Create User : ", error)
                return
            }
            print("Successfully Created User : \(result?.user.uid ?? "")")
        }
        
    }
    
    private func validate() -> Bool{
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                  self.errorMessage = "Please enter all the fields."
                  return false
              }
        guard email.contains("@") && email.contains(".") else {
            self.errorMessage = "Enter a Valid Email"
            return false
        }
        guard password.count >= 8 else {
            self.errorMessage = "The Password should be greater than 7 characters"
            return false
        }
        return true
    }
    
    
    
}
