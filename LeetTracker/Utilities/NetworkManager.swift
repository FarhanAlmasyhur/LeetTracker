//
//  NetworkManager.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 25/07/22.
//

import Foundation
import Combine

class NetworkManager{
    
    private let url: URL? = URL(string: "https://leetcode.com/graphql")
    public var problemData: ProblemData?
    
//    var usersPublisher: AnyPublisher<ProblemData, Error>{
//        return URLSession.shared.dataTaskPublisher(for: url!)
//            .map{$0.data}
//            .decode(type: ProblemData.self, decoder: JSONDecoder())
//            .receive(on: RunLoop.main)
//            .eraseToAnyPublisher()
//    }
    
    func getProblems() -> ProblemData? {
        guard let url = URL(string: "https://leetcode.com/graphql") else { return nil }
        
        //Method, body, and headers
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = LoadJSON.loadJson(filename: "PostLeetCode")
        
        //make request
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let response = try JSONDecoder().decode(ProblemData.self, from: data)
                self.problemData = response
                
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
        return problemData
    }
    
}
