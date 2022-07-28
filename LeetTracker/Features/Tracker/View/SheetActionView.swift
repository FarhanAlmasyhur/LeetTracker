//
//  SheetActionView.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 28/07/22.
//

import SwiftUI

struct SheetActionView: View {
    
    @EnvironmentObject var trackerViewModel: TrackerViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("\(trackerViewModel.dayToTrack) Problems")
                .bold()
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .center)
            Text("You will get random \(trackerViewModel.dayToTrack) Problems for \(trackerViewModel.dayToTrack) days consecutive program.")
                .font(.system(size: 18))
                .padding()
            Text("Are you Ready?")
                .font(.system(size: 18))
                .padding()
            AccentButton(buttonAction: {
                print("clicked")
            }, buttonText: "I'm Ready")
        }
    }
}

struct SheetActionView_Previews: PreviewProvider {
    static var previews: some View {
        SheetActionView()
            .environmentObject(TrackerViewModel())
    }
}
