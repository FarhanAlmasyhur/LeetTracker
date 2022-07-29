//
//  StaticDataManager.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 29/07/22.
//

import SwiftUI

class StaticProblem: Identifiable, ObservableObject{
    let id = UUID()
    @Published var difficulty: String
    @Published var title: String
    @Published var isCleared: Bool
    
    init(difficulty: String, title: String, isCleared: Bool = false){
        self.difficulty = difficulty
        self.title = title
        self.isCleared = isCleared
    }
}

class ManagedStaticProblems: ObservableObject{
    private var problems:[StaticProblem] = []
    
    @ObservedObject public static var sharedProblems = ManagedStaticProblems()
    
    func addProblems(problem: StaticProblem) {
        problems.append(problem)
    }
    
    func getProblems() -> [StaticProblem] {
        problems
    }
    
}
