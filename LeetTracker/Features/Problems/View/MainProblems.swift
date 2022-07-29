//
//  MainProblems.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

struct MainProblems: View {
    @EnvironmentObject var problemViewModel: ProblemViewModel
    
    var body: some View {
        if problemViewModel.staticProblems.count == 0{
            NoProblemView()
        } else {
            ForEach(problemViewModel.staticProblems){ problem in
                ListProblem(problem: problem)
                
            }
        }
    }
}

struct MainProblems_Previews: PreviewProvider {
    static var previews: some View {
        MainProblems()
            .environmentObject(ProblemViewModel())
    }
}
