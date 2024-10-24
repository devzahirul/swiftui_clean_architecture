//
//  UserEndpoint.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// An enumeration of user-related endpoints.
enum UserEndpoint: Endpoint {
    case getUsers
    
    var urlRequest: URLRequest {
        switch self {
        case .getUsers:
            let url = URL(string: "https://api.example.com/users")!
            return URLRequest(url: url)
        }
    }
}
