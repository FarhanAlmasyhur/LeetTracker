//
//  ProblemViewModel.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 26/07/22.
//

import SwiftUI

class ProblemViewModel: ObservableObject {
    
    @Published public var staticProblems: [StaticProblem] = []
    
    //TODO: Get Problem from CoreData
    
    func getStaticProblems(){
        staticProblems = ManagedStaticProblems.sharedProblems.getProblems()
    }
    
}
