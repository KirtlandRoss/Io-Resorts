//
//  Results+CoreDataClass.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
//
//

import Foundation
import CoreData

@objc(Results)
public class Results: NSManagedObject {

    func checkIfComplete(){
        self.completed = q1 != 0 && q1 != 0 && q3 != 0 && q4 != 0 && q5 != 0
    }
}

