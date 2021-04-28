//
//  User+CoreDataClass.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/26/21.
//
//

import Foundation
import CoreData

@objc(User)
public class User: NSManagedObject {

    func passCheck(_ pass: String) -> Bool{
        if pass == self.password{
            return true
        }
        return false
    }
}
