//
//  User+CoreDataProperties.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/26/21.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var password: String?
    @NSManaged public var surveyComplete: Bool
    @NSManaged public var userId: UUID?
    @NSManaged public var coupon: Coupon?
    @NSManaged public var surveyResults: SurveyResults?

}

extension User : Identifiable {

}
