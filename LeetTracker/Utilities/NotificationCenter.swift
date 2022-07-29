//
//  NotificationCenter.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 29/07/22.
//

import Foundation
import UserNotifications


class NotificationCenter {
    let center = UNUserNotificationCenter.current()
    let content : UNMutableNotificationContent =  {
        let alert = UNMutableNotificationContent()
        alert.title = "Try Solve it"
        alert.body = "Dont forget to solve atleast one problem today"
        return alert
    }()
    
//    let trigger = 
    
}
