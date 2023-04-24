//
//  AppState.swift
//  EmployeePortaliOS
//
//  Created by Kirtland Ross on 2/27/23.
//

import Foundation
import SwiftUI
final class AppState: ObservableObject{
    static let shared = AppState()
    @Published var token : String?
    @Published private(set) var email : String?
    @Published private(set) var firstName: String?
    @Published private(set) var lastName: String?
    @Published private(set) var empID: String?

}
