//
//  EndpointsUtil.swift
//  EmployeePortalApp
//
//  Created by Kirtland Ross on 2/7/23.
//

import Foundation
public struct Util{
    public static let Base_URL = "https://iccbyrhrql.execute-api.us-east-1.amazonaws.com/dev/";
    public static let URL_LOGIN = Base_URL + "auth";
    public static let URL_TOKEN = Base_URL + "auth/token"
    public static let URL_CREATEUSER = Base_URL + "createuser"


    public enum DASH_FRAG {
        case HOME;
        case USER_PROFILE;
        case EDIT_PROFILE;

    }
    public enum Endpoint: String {
        case test = "apiService/"
        case token = "auth/token"
        case login = "auth"
    }
}
