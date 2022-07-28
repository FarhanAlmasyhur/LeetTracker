//
//  LevelTracker.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

struct LevelTracker: View {
    
    
    @State private var showingSheets = false
    var trackerViewModel: TrackerViewModel = TrackerViewModel()
    var isActive: Bool = false
    
    var body: some View {
        Text(trackerViewModel.level.rawValue)
                .font(.system(size: 16))
                .multilineTextAlignment(.leading)
                .frame(width: 270, alignment: .leading)
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(isActive ? Color.white : Color.gray)
                        .shadow(color: .gray, radius: 2, x: 0, y: 1.5)
                )
                .opacity(isActive ? 1 : 0.5)
                .onTapGesture {
                    showingSheets.toggle()
                }
                .sheet(isPresented: $showingSheets) {
                    
                        
                }
    }
}

struct LevelTracker_Previews: PreviewProvider {
    static var previews: some View {
        LevelTracker().environmentObject(TrackerViewModel())
    }
}
