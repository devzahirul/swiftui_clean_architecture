//
//  Endpoint.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A protocol representing an API endpoint.
protocol Endpoint {
    /// The URL request associated with the endpoint.
    var urlRequest: URLRequest { get }
}
