//
//  ProblemViewModel.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 26/07/22.
//

import SwiftUI

class TrackerViewModel: ObservableObject {
    
    @Published public var username: String = ""
    @MainActor public var questions: [Question] = []
    @Published var level: Levels = Levels.level1
    
    @Published var dayToTrack: Int = 0
    @Published var levels: [Levels] = Levels.allCases
    @Published var levelsActive: [Levels:Bool] = [:]
    @Published var levelCondition: Bool = false
    
    private let networkManager: NetworkManager = NetworkManager()
    private let managedStaticProblem: ManagedStaticProblems = ManagedStaticProblems.sharedProblems
    
    init(){
        for level in levels {
            if level == .level1 {
                levelsActive.updateValue(true, forKey: level)
            } else{
                levelsActive.updateValue(false, forKey: level)
            }
        }
    }
    
    // MARK: - Get questions from leetcode and save it to CoreData
    public func getQuestions() {
        DispatchQueue.main.async {
            self.networkManager.getProblems { response, error in
                if error != nil{
                    print(error?.localizedDescription)
                } else {
                    self.questions = response?.data.problemsetQuestionList.questions ?? []
                    for question in self.questions {
                        // TODO: CoreData
                        let staticData = StaticProblem(difficulty: question.difficulty, title: question.title, isCleared: false)
                        self.managedStaticProblem.addProblems(problem: staticData)
                    }
                }
            }
        }
        
        
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
    
    
}
