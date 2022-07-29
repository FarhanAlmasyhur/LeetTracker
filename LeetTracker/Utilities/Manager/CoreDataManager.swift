//
//  CoreDataManager.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 29/07/22.
//

import Foundation
import CoreData

class CoreDataManager{
    let persistentStoreContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init(){
        persistentStoreContainer = NSPersistentContainer(name: "LeetTracker")
        persistentStoreContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize CoreData: \(error.localizedDescription)")
            }
        }
    }
}
