//
//  MainView.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 28/07/22.
//

import SwiftUI

struct MainView: View {
    
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
        }.accentColor(.orange)
            .environmentObject(TrackerViewModel())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(TrackerViewModel())
    }
}
