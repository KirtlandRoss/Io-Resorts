//
//  APIService.swift
//  EmployeePortalApp
//
//  Created by Kirtland Ross on 2/7/23.
//

import Foundation


public struct APIService: API{

    public func apiCall(parameters: [String: Any]?, endpoint: Util.Endpoint, method: APIMethod) async -> (Any, Bool) {
        var data1 = Data()
        let url = URL(string: Util.Base_URL + endpoint.rawValue)!
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        let token = AppState.shared.token
        if method != .GET{
            data1 = try! JSONSerialization.data(withJSONObject: parameters!, options: [])
            request.setValue("application/json", forHTTPHeaderField: "content-type")
            request.httpBody = data1
        }
        if token != nil {
            request.addValue("BEARER \(token!)", forHTTPHeaderField: "Authorization")
        }

//        if no token kill function
        else if parameters == nil{
            return ("null data", false)
        }
//        Create the HTTP request
        return await withCheckedContinuation { continuation in
            URLSession.shared.dataTask(with: request) { (data2, response, error) in
                if (error != nil) {
                    print(error ?? "null error")
                    continuation.resume(returning: (String(), false))
                } else {
                    if let httpResponse = response as? HTTPURLResponse {
                        if httpResponse.statusCode == 200 {
                            continuation.resume(returning: (data2 ?? "null data", true))
                        } else {
                            continuation.resume(returning: (data2 ?? "null data", false))
                        }
                    }
                }
            }.resume()
        }
    }
}

public enum APIMethod : String{
    case GET;
    case POST;
    case DELETE;
    case PUT;
}

protocol API {
    func apiCall(parameters: [String: Any]?,endpoint: Util.Endpoint, method: APIMethod) async -> (Any, Bool)
}
