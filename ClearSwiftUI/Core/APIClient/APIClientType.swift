//
//  Type.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A protocol defining methods for executing network requests.
protocol APIClientProtocol {
    /// Executes a network request for a given endpoint and decodes the response.
    func execute<T: Decodable>(endpoint: Endpoint) async throws -> T
}
