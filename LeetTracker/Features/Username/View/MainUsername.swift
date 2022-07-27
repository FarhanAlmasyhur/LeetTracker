//
//  MainUsername.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

struct MainUsername: View {
    
    private let usernameViewModel = UsernameViewModel()
    @State var username: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                Image("username")
                VStack(alignment: .leading){
                    Text("Username")
                    TextField("Enter your LeetCode Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                    
                }.padding(.all)
                NavigationLink(destination: MainUsername()) {
                    AccentButton{
                        usernameViewModel.changeUsername(with: username)
                    }
                }
            }
        }
    }
}

struct MainUsername_Previews: PreviewProvider {
    static var previews: some View {
        MainUsername()
    }
}
