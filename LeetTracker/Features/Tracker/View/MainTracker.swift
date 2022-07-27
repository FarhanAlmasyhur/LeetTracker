//
//  MainTracker.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

struct MainTracker: View {
    
    private let trackerViewModel = TrackerViewModel()
    
    var body: some View {
        VStack() {
            Text("Hello, \(trackerViewModel.getUsername())!")
                .multilineTextAlignment(.leading)
            VStack{
                Text("3")
                    .bold()
                    .foregroundColor(.orange)
                    .font(.system(size: 72))
                Text("DAY STREAK")
                    .bold()
                    .font(.system(size: 28))
            }   .frame(width: 250, height: 250, alignment: .center)
                .padding()
                .fixedSize()
                .background(
                    RoundedRectangle(cornerRadius: 28)
                        .fill(Color.white)
                        .shadow(radius: 3)
                        
                )
            Spacer()
        }.padding()
    }
}

struct MainTracker_Previews: PreviewProvider {
    static var previews: some View {
        MainTracker()
    }
}
