//
//  Questions+CoreDataClass.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 5/4/21.
//
//

import Foundation
import CoreData

@objc(Questions)
public class Questions: NSManagedObject {
//categoryString is mostly used for setting the images in the surveyViewController

    func setCategory(_ category : Category){
        results?.catagory = category.rawValue
    }

    func setContent(){

        switch getCategory() {
        case .room:
            categoryString = "room"
            question1 = "How clean was your room"
            question2 = "How roomy was your room"
            question3 = "How was the view?"
            question4 = "How loud were your neighbors"
            question5 = "Overall"
        case .food:
            categoryString = "food"
            question1 = "How did the food taste"
            question2 = "How did you feel about the cost"
            question3 = "How was the food service?"
            question4 = "How was the selection?"
            question5 = "Overall"
        case .pool:
            categoryString = "pool"
            question1 = "How was the temperature"
            question2 = "How was the cleanliness"
            question3 = "How was the staff?"
            question4 = "How was the location?"
            question5 = "Overall"
        case .spa:
            categoryString = "spa"
            question1 = "How was the wait?"
            question2 = "How was the cleanliness?"
            question3 = "How was the staff?"
            question4 = "How was the price?"
            question5 = "Overall"
        case .overall:
            categoryString = "overall"
            question1 = "How was check-in?"
            question2 = "How was the location?"
            question3 = "How was the staff?"
            question4 = "How was the price?"
            question5 = "How was the experience?"
        default:
            print("Questions.getQuestions error")
        }
    }

    func getQuestions() -> [String]{

        switch getCategory() {
        case .room:
            question1 = "How clean was your room"
            question2 = "How roomy was your room"
            question3 = "How was the view?"
            question4 = "How loud were your neighbors"
            question5 = "Overall"
        case .food:
            question1 = "How did the food taste"
            question2 = "How did you feel about the cost"
            question3 = "How was the food service?"
            question4 = "How was the selection?"
            question5 = "Overall"
        case .pool:
            question1 = "How was the temperature"
            question2 = "How was the cleanliness"
            question3 = "How was the staff?"
            question4 = "How was the location?"
            question5 = "Overall"
        case .spa:
            question1 = "How was the wait?"
            question2 = "How was the cleanliness?"
            question3 = "How was the staff?"
            question4 = "How was the price?"
            question5 = "Overall"
        case .overall:
            question1 = "How was check-in?"
            question2 = "How was the location?"
            question3 = "How was the staff?"
            question4 = "How was the price?"
            question5 = "How was the experience?"
        default:
            print("Questions.getQuestions error")
        }
        return [question1!,question2!,question3!,question4!,question5!]
    }
    //transforms Int64 into category enum then returns
    func getCategory() -> Category{
        return Category(rawValue: (results?.catagory)!) ?? .unknown
    }

}

