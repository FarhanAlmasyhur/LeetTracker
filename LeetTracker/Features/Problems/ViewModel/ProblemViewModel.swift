//
//  ProblemViewModel.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 26/07/22.
//

import SwiftUI

class ProblemViewModel {
    
    @Published public var questions: [Question] = []
    
    //TODO: Get Problem from CoreData
    func getProblem() -> [Question] {
        
        return []
    }
    
    
}
