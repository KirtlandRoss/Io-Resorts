//
//  Coupon+CoreDataProperties.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/26/21.
//
//

import Foundation
import CoreData


extension Coupon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Coupon> {
        return NSFetchRequest<Coupon>(entityName: "Coupon")
    }

    @NSManaged public var couponCode: UUID?
    @NSManaged public var discount: Double
    @NSManaged public var user: User?

}

extension Coupon : Identifiable {

}
