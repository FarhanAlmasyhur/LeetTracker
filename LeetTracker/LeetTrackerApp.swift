//
//  LeetTrackerApp.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 23/07/22.
//

import SwiftUI

@main
struct LeetTrackerApp: App {
//    let persistenceController = PersistenceController.shared
    private let usernameViewModel = UsernameViewModel()

    var body: some Scene {
        WindowGroup {
            if !usernameViewModel.checkUsername(){
                MainUsername()
            } else {
                TabView{
                    MainTracker()
                        .tabItem {
                            Label("Track", systemImage: "keyboard")
                        }
                    MainProblems()
                        .tabItem{
                            Label("Problems", systemImage: "brain")
                        }
                }.accentColor(.orange)
            }
        }
    }
}
