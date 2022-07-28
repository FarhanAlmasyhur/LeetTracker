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
    @State var goToMainView = false
    
    var body: some View {
        NavigationView {
            VStack{
                Image("username")
                VStack(alignment: .leading){
                    Text("Username")
                    TextField("Enter your LeetCode Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                    
                }.padding(.all)
                VStack{
                    AccentButton{
                        usernameViewModel.changeUsername(with: username)
                        goToMainView = true
                    }
                    NavigationLink("", isActive: $goToMainView) {
                        MainView()
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
