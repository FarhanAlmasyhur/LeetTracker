//
//  MainTracker.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

enum Levels: String, CaseIterable, Identifiable {
    
    var id: String {
        UUID().uuidString
    }
    
    case level1 = "Level 1"
    case level2 = "Level 2"
    case level3 = "Level 3"
    case level4 = "Level 4"
}

struct MainTracker: View {
    
    var trackerViewModel: TrackerViewModel = TrackerViewModel()
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Hello, \(trackerViewModel.getUsername())!")
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding(10)
                DayTracker()
                Text("Challenges")
                    .bold()
                    .padding(.top)
                Text("Start your challenges from level 1")
                
            }
        }   .frame(maxWidth: .infinity)
            .edgesIgnoringSafeArea(.horizontal)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct MainTracker_Previews: PreviewProvider {
    static var previews: some View {
        MainTracker()
//            .environmentObject(TrackerViewModel())
    }
}
