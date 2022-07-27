//
//  ProblemData.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 25/07/22.
//

import Foundation

// MARK: - ProblemData
struct ProblemData: Codable {
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let problemsetQuestionList: ProblemsetQuestionList
}

// MARK: - ProblemsetQuestionList
struct ProblemsetQuestionList: Codable {
    let total: Int
    let questions: [Question]
}

// MARK: - Question
struct Question: Codable {
    let acRate: Double
    let difficulty: String
    let freqBar: JSONNull?
    let frontendQuestionID: String
    let isFavor, paidOnly: Bool
    let status: JSONNull?
    let title, titleSlug: String
    let topicTags: [TopicTag]
    let hasSolution, hasVideoSolution: Bool

    enum CodingKeys: String, CodingKey {
        case acRate, difficulty, freqBar
        case frontendQuestionID = "frontendQuestionId"
        case isFavor, paidOnly, status, title, titleSlug, topicTags, hasSolution, hasVideoSolution
    }
}

// MARK: - TopicTag
struct TopicTag: Codable {
    let name, id, slug: String
}


