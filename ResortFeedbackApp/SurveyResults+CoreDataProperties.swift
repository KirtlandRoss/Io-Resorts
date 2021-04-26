//
//  SurveyResults+CoreDataProperties.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/26/21.
//
//

import Foundation
import CoreData


extension SurveyResults {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SurveyResults> {
        return NSFetchRequest<SurveyResults>(entityName: "SurveyResults")
    }

    @NSManaged public var stayID: UUID?
    @NSManaged public var results: NSObject?
    @NSManaged public var user: User?

}

extension SurveyResults : Identifiable {

}
