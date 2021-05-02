//
//  User+CoreDataClass.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
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
    func checkIfComplete(){
        for i in 0...4{
            if !(self.results?.array[i] as! Results).completed{
                self.surveyComplete = false
            }
        }
        self.surveyComplete = true
    }
}
