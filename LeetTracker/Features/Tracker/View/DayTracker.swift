//
//  DayTracker.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

struct DayTracker: View {
    var body: some View {
        VStack{
            Text("3")
                .bold()
                .foregroundColor(.orange)
                .font(.system(size: 72))
            Text("DAY STREAK")
                .bold()
                .font(.system(size: 28))
        }   .frame(width: 280, height: 230, alignment: .center)
            .padding()
            .fixedSize()
            .background(
                RoundedRectangle(cornerRadius: 28)
                    .fill(Color.white)
                    .shadow(radius: 3)
                    
            )
    }
}

struct DayTracker_Previews: PreviewProvider {
    static var previews: some View {
        DayTracker()
    }
}
