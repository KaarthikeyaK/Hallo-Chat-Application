//
//  HalloApp.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 02/06/23.
//

import SwiftUI
import Firebase

@main
struct HalloApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
