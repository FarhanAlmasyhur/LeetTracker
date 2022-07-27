//
//  Problem+CoreDataProperties.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//
//

import Foundation
import CoreData


extension Problem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Problem> {
        return NSFetchRequest<Problem>(entityName: "Problem")
    }

    @NSManaged public var title: String?
    @NSManaged public var difficulty: String?

}

extension Problem : Identifiable {

}
