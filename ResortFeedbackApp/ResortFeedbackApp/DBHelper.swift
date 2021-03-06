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

    func createUser(_ object: [String:String]) -> User{

        let user = User(context: context)

        for _ in 0...4{
            
            user.addToResults(Results(context: context))
            (user.results?.lastObject as! Results).questions = Questions(context: context)
            (user.results?.lastObject as! Results).catagory = 5
            (user.results?.lastObject as! Results).completed = false

        }
        user.name = object["name"]
        user.password = object["password"]
        user.surveyComplete = false
        print(user.results!.array.count)
        do{
            try context.save()
            print("Data Saved")
        }
        catch{
            print("data not saved")
        }
        return user
    }

    func fetchUser(name : String) throws -> User {
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
        if st == nil{
            throw NilError.nilErr
        }
        return st!
    }
    func userExists(name : String) -> Bool{

        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "name == %@", name)

        let req = try? context.fetch(fetchReq) as? [User]
        if req!.count != 0{
            return true
        }
        else {
            return false
        }
    }

    func updateResultsData(user: User){

        print(user.managedObjectContext as Any)

        do{

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
}

enum NilError : Error{
    case nilErr
}
