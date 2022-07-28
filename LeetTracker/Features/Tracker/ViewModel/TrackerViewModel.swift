//
//  ProblemViewModel.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 26/07/22.
//

import SwiftUI

class TrackerViewModel: ObservableObject {
    
    @Published public var username: String = ""
    @Published public var questions: [Question] = []
    @Published var level: Levels = Levels.level1
    
    
    private let networkManager: NetworkManager = NetworkManager()
    
    // MARK: - Get questions from leetcode
    private func getQuestions() {
        guard let problems = networkManager.getProblems() else { return }
        
        questions = problems.data.problemsetQuestionList.questions
    }
    
    // MARK: - Save the questions array to coredata
    public func saveQuestions(){
        getQuestions()
        
    }
    
    // MARK: - Get Username
    func getUsername() -> String{
        username = UserDefaults.standard.string(forKey: "username") ?? ""
        return username
    }
    
    
    
}
