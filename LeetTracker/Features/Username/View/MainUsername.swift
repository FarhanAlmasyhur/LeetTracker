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
    @StateObject var trackerViewModel = TrackerViewModel()
    @StateObject var problemViewModel = ProblemViewModel()
    
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
                            .environmentObject(trackerViewModel)
                            .environmentObject(problemViewModel)
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
