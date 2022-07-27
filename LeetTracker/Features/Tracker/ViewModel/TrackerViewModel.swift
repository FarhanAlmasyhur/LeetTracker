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
    private let networkManager: NetworkManager = NetworkManager()
    
    // MARK: - Get questions from leetcode
    func getQuestions() {
        guard let problems = networkManager.getProblems() else { return }
        
        questions = problems.data.problemsetQuestionList.questions
    }
    
    // MARK: - Save the questions array to coredata
    func saveQuestions(){
        
    }
    
    // MARK: - Get Username
    func getUsername() -> String{
        username = UserDefaults.standard.string(forKey: "username") ?? ""
        return username
    }
    
    
    
}
