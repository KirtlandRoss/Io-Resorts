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
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext

    func addData(_ object: [String:String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = object["name"]
        student.course = object["course"]

        do{
            try context?.save()
            print("Data Saved")
        }
        catch{
            print("data not saved")
        }


    }
    func getOneData(name : String) -> Student {
        var st = Student()
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "Student")
        fetchReq.predicate = NSPredicate(format: "name == %@", name)
        fetchReq.fetchLimit = 1
        do{
            let req = try context?.fetch(fetchReq) as! [Student]
            if (req.count != 0 ){
                st = req.first! as Student
            }
            return st
        }
        catch{
            print("no data returned")
        }
        return st
    }
    func getData() -> [Student]{
        var stu = [Student]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        do{
            stu=try context?.fetch(fetchReq) as! [Student]

        }
        catch{
            print("cannot get data")
        }
        return stu
    }
    func deleteData(_ name: String){
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "Student")
        fetchReq.predicate = NSPredicate(format: "name == %@", name)
        do {
            let st = try context?.fetch(fetchReq)
            context?.delete(st?.first as! Student)
            try context?.save()
            print("data deleted")

        }
        catch{
                print("data not deleted")

        }
    }
    func updateData(_ object: [String: String]){
        var st = Student()
        let fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "Student")
        fetchReq.predicate = NSPredicate(format: "name == %@", object["name"]!)
        do{
            let req = try context?.fetch(fetchReq)

            if (req?.count != 0 ){
                st = req!.first as! Student
                st.course = object["course"]
            }
        }
        catch{

        }

    }
}
