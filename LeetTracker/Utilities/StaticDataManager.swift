//
//  StaticDataManager.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 29/07/22.
//

import SwiftUI

struct StaticProblem: Identifiable{
    let id = UUID()
    public var difficulty: String
    public var title: String
    public var isCleared: Bool
}

class ManagedStaticProblems: ObservableObject{
    public var problems:[StaticProblem] = []
    
    @ObservedObject public static var sharedProblems = ManagedStaticProblems()
    
    func addProblems(problem: StaticProblem) {
        DispatchQueue.main.async {
            self.problems.append(problem)
        }
    }
    
}
