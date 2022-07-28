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
    
    @Published var dayToTrack: Int = 0
    @Published var levels: [Levels] = Levels.allCases
    @Published var levelsActive: [Levels:Bool] = [:]
    @Published var levelCondition: Bool = false
    
    private let networkManager: NetworkManager = NetworkManager()
    
    init(){
        for level in levels {
            if level == .level1 {
                levelsActive.updateValue(true, forKey: level)
            } else{
                levelsActive.updateValue(false, forKey: level)
            }
        }
    }
    
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
    public func getUsername(){
        username = UserDefaults.standard.string(forKey: "username") ?? ""
    }
    
    // MARK: - Handle level cases
    func stringLevelProblems(levelTapped: Levels){
        level = levelTapped
        switch(level){
        case .level1:
            dayToTrack = 7
        case .level2:
            dayToTrack = 14
        case .level3:
            dayToTrack = 21
        case .level4:
            dayToTrack = 28
        }
    }
    
    func checkActive(level: Levels) -> Bool{
        if let boolean = levelsActive[level]{
            levelCondition = boolean
        }
        return levelCondition
        
    }
    
    
}
