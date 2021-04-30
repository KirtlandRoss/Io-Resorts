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

    func addUser(_ object: [String:String]) -> User{

        let user = User(context: context)
//        let results = Results(context: context)
//        var resultsArr = [Results]()
        for _ in 0...4{
            
            user.addToResults(Results(context: context))
            (user.results?.lastObject as! Results).completed = false
        }
//        print(resultsArr.count)

        user.name = object["name"]
        user.password = object["password"]
        user.surveyComplete = false

//        print(user.results!.array.count)
//        for i in 0...user.results!.array.count{
//            print(user.results!.array[i])
//        }
        print(user.results!.array.count)
        //set relationship pointer to owning object


        do{

            try! context.save()
            print("Data Saved")
        }
        catch{
            print("data not saved")
        }
        return user
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
        var st : User?
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "name == %@", name)

        do{
            let req = try context.fetch(fetchReq) as? [User]
            if (req!.count != 0  ){
                st = req!.first! as User
                return st!
            }

        }
        catch{
            print("no data returned")
        }
        return st!
    }

    func updateResultsData(user: User){
//        var st = User(context: context)
        print(user.managedObjectContext)
//        print(st.managedObjectContext)
//        let fetchReq = NSFetchRequest<User>.init(entityName: "User")
//        fetchReq.predicate = NSPredicate(format: "name == %@", user.name!)
//        fetchReq.fetchLimit = 1

        do{
//            let req = try context.fetch(fetchReq)
//            if (req.count != 0 ){

//            st.name = user.name
//            }
            try! context.save()
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
            try! context.save()
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
