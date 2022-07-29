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
    @StateObject var trackerViewModel = TrackerViewModel()
    @StateObject var problemViewModel = ProblemViewModel()

    init(){
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert,.sound,.badge]) { result, error in
            if let error = error {
                print("\(error.localizedDescription)")
            }
            
        }
    }
    var body: some Scene {
        WindowGroup {
            if !usernameViewModel.checkUsername(){
                MainUsername()
            } else {
                MainView()
                    .environmentObject(trackerViewModel)
                    .environmentObject(problemViewModel)
            }
        }
    }
}
