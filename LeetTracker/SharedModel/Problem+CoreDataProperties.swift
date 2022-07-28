//
//  Problem+CoreDataProperties.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 28/07/22.
//
//

import Foundation
import CoreData


extension Problem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Problem> {
        return NSFetchRequest<Problem>(entityName: "Problem")
    }

    @NSManaged public var difficulty: String?
    @NSManaged public var title: String?
    @NSManaged public var isCleared: Bool

}

extension Problem : Identifiable {

}
