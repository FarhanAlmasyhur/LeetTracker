//
//  ProblemViewModel.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 26/07/22.
//

import SwiftUI

class ProblemViewModel: ObservableObject {
    
    @ObservedObject public var staticProblems = ManagedStaticProblems.sharedProblems
    
    //TODO: Get Problem from CoreData
    
    
}
