//
//  UsernameViewModel.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 23/07/22.
//

import SwiftUI


class UsernameViewModel: ObservableObject{
    
    @Published var username: String = ""
    
    public func changeUsername(with newUsername: String){
        username = newUsername
        UserDefaults.standard.set(username, forKey: "username")
    }
    
    public func getUsername() -> String {
        if let name = UserDefaults.standard.string(forKey: "username"){
            username = name
        }
        return username
    }
    
    public func checkUsername() -> Bool {
        username = getUsername()
        if username == "" {
            return false
        }
        return true
    }
    
}
