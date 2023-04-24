//
//  LoginResponse.swift
//  EmployeePortaliOS
//
//  Created by Kirtland Ross on 2/27/23.
//

import Foundation
import ObjectMapper
import SwiftUI
struct UserData : Mappable{
    var firstName: String?
    var lastName: String?
    var empID: Int?
    var components : [Component]?
    init?(map: ObjectMapper.Map) {
    }

    mutating func mapping(map: ObjectMapper.Map) {
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        empID <- map["empID"]
        components <- map["components"]
    }
    //mock data init
    init(){
        firstName = "FirstName"
        lastName = "LastName"
        empID = 99999
        components = [Component(self)]
        for i in 1...10 {
            components!.append(Component(i))
        }
    }
    class Component: ObservableObject, Mappable, Identifiable{
        @Published var title: String?
        @Published var content: [String]?
        @Published var isMetaBlock = false
        required init?(map: ObjectMapper.Map) {
        }
        //mock data init for meta data block
        init(_ data: UserData){
            isMetaBlock = true
            self.title = "\(data.firstName!) \(data.lastName!)"
            content = ["empID: \(data.empID!)"]

        }
        //mock data init
        init(_ int: Int){
            title = "Dummy Component \(int)"
            content = []
            for i in 1...3{
                content!.append("Dummy Data \(i)" )
            }
        }
        func mapping(map: ObjectMapper.Map) {
            title <- map["title"]
            content <- map["content"]
        }
    }
}

class LoginResponse : Mappable{
    var token: String?


    func mapping(map: Map){
        token <- map["token"]
    }
    required init(map: Map) {
    }
}
