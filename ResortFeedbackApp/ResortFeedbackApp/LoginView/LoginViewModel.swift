//
//  LoginViewModel.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/24/23.
//


import Foundation
import CoreData
import ObjectMapper

extension LoginView{
    class ViewModel: ObservableObject{
        @Published private(set) var token : String?
        @Published private(set) var loginProgress = false
        @Published private(set) var loginFailed = false
        @Published private(set) var checkingPersistantToken = true
        @Published var email = "testmail@test.com"
        @Published var password = "testpass"
        var response: (payload: Any, status: Bool)?
        let apiService = APIService()

        @MainActor
        func login () async -> String?{
            loginProgress = true
            loginFailed = false
            let params = ["email": email, "password": password]
            response = await apiService.apiCall(parameters: params, endpoint: .login, method: .POST)
            if response?.status != nil && response!.status{
                guard let jsonString = String(data: response?.payload as! Data,encoding: .utf8) else {return nil}
                token  = LoginResponse(JSONString: jsonString)?.token
                AppState.shared.token = token!
                loginProgress = false
                return token!
            }
            loginFailed = true
            loginProgress = false
            return nil
        }

//        private func fetchPersistentTokens() -> String? {
//            let managedContext = PersistenceController.shared.container.viewContext
//
//            let fetchRequest = NSFetchRequest<UserData>(entityName: "UserData")
//            let userDataArray = try? managedContext.fetch(fetchRequest)
//            guard let userData = userDataArray?.first else { return nil }
//            if userData.token != nil {
//                return userData.token
//            }
//            return nil
//        }
    }
}
