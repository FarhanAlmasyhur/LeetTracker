//
//  NoProblemView.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 28/07/22.
//

import SwiftUI

struct NoProblemView: View {
    var body: some View {
        VStack{
            Image("problems")
            Text("There are no active problems")
                .font(.system(size: 15))
                .padding(EdgeInsets(top: 30, leading: 0, bottom: 5, trailing: 0))
            Text("Start your daily challenges on the tracking page")
                .bold()
                .font(.system(size: 15))
            
        }
    }
}

struct NoProblemView_Previews: PreviewProvider {
    static var previews: some View {
        NoProblemView()
            .environmentObject(ProblemViewModel())
    }
}
