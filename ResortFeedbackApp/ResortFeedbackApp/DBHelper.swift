//
//  DBHelper.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/27/21.
//

import Foundation
import CoreData
import UIKit

class DBHelper{
    static var inst = DBHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    func addUser(_ object: [String:String]){

        let user = User(context: context)
        let results = Results(context: context)

        user.name = object["name"]
        user.password = object["password"]
        user.surveyComplete = false
        //set relationship pointer to owning object
        results.user = user

        do{
            try! context.save()
            print("Data Saved")
        }
        catch{
            print("data not saved")
        }
    }
    func getOneResults(username: String ,cat : String) -> Results {
        var st = Results(context: context)
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "category == %@", cat)
        fetchReq.fetchLimit = 1
        do{
            let req = try context.fetch(fetchReq) as? [Results]
            if (req!.count != 0  ){
                st = req!.first! as Results
                return st
            }

        }
        catch{
            print("no data returned")
        }
        return st
    }

    func getOneUser(name : String) -> User {
        var st = User(context: context)
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "name == %@", name)
        fetchReq.fetchLimit = 1
        do{
            let req = try context.fetch(fetchReq) as? [User]
            if (req!.count != 0  ){
                st = req!.first! as User
                return st
            }

        }
        catch{
            print("no data returned")
        }
        return st
    }

    func updateResultsData(results : [Results], user: User){
        var st = [Results(context: context)]
        let fetchReq = NSFetchRequest<Results>.init(entityName: "Results")
        fetchReq.predicate = NSPredicate(format: "user == %@", user)
        fetchReq.fetchLimit = 5
        do{
            let req = try context.fetch(fetchReq)
            if (req.count == 5 ){
                st = req
                st = results

            }
            try context.save()
            print("Data Saved")
        }
        catch{
            print("data not saved")
        }

    }

    func updateData(_ user : User){
        var st = User()
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "name == %@", user.name!)
        fetchReq.fetchLimit = 1
        do{
            let req = try context.fetch(fetchReq)
            if (req.count != 0 ){
                st = req.first as! User
                st.results = user.results
                
            }
            try context.save()
            print("Data Saved")
        }
        catch{
            print("data not saved")
        }

    }
    func getUserData() -> [User]{
        var stu = [User]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do{
            stu=try context.fetch(fetchReq) as! [User]

        }
        catch{
            print("cannot get data")
        }
        return stu
    }
    func deleteUserData(_ name: String){
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "name == %@", name)
        do {
            let st = try context.fetch(fetchReq)
            context.delete(st.first as! User)
            try context.save()
            print("data deleted")

        }
        catch{
            print("data not deleted")

        }
    }
    func updateUserMetadata(_ object: [String: String]){
        var st = User()
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "name == %@", object["name"]!)
        do{
            let req = try context.fetch(fetchReq)

            if (req.count != 0 ){
                st = req.first as! User
                st.name = object["name"]
            }
        }
        catch{

        }

    }
    //    func updateUserSurvey(_ name: String){
    //        var st = User()
    //        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
    //        fetchReq.predicate = NSPredicate(format: "name == %@", results)
    //        do{
    //            let req = try context?.fetch(fetchReq)
    //
    //            if (req?.count != 0 ){
    //                st = req!.first as! User
    //
    //            }
    //        }
    //        catch{
    //
    //        }
    //
    //    }
}
