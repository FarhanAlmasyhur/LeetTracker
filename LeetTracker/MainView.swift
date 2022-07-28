//
//  MainView.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 28/07/22.
//

import SwiftUI

struct MainView: View {
    @StateObject var trackerViewModel = TrackerViewModel()
    @StateObject var problemViewModel = ProblemViewModel()
    
    var body: some View {
        TabView{
            MainTracker()
                .tabItem {
                    Label("Track", systemImage: "keyboard")
                }
                .tag(1)
            MainProblems()
                .tabItem{
                    Label("Problems", systemImage: "brain")
                }
                .tag(2)
        }   .accentColor(.orange)
//            .environmentObject(trackerViewModel)
//            .environmentObject(problemViewModel)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(TrackerViewModel())
            .environmentObject(ProblemViewModel())
    }
}
