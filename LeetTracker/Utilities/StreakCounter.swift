//
//  StreakCounter.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 29/07/22.
//

import Foundation

class StreakCounter{

    static func checkForStreak() -> Int {
        
        let lastLogin = UserDefaults.standard.string(forKey: "lastLogin")
                
        guard let lastLogin = lastLogin else {
            UserDefaults.standard.set(1, forKey: "loginStreak")
            UserDefaults.standard.set(Date(), forKey: "lastLogin")
            return 0
        }
        
        let format = DateFormatter()
        format.dateFormat = "YYYY-MM-DD"
        
        guard let lastLoginDate = format.date(from: lastLogin) else {
            return 0
        }
                
        guard let modifiedDate = Calendar.current.date(byAdding: .day, value: 1, to: lastLoginDate) else {return 0}
        
        if Calendar.current.isDateInToday(lastLoginDate) {
            //login on same day
            return UserDefaults.standard.integer(forKey: "loginStreak")

        } else if Calendar.current.isDateInToday(modifiedDate) {
            //streak is extended
            var streak = UserDefaults.standard.integer(forKey: "loginStreak")
            streak += 1
            UserDefaults.standard.set(streak, forKey: "loginStreak")
            return streak
        } else {
            //streak is broken
            UserDefaults.standard.set(0, forKey: "loginStreak")
            return 0
        }
    }
    
}
