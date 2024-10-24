//
//  APIClient.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A concrete implementation of APIClientProtocol using URLSession.
class APIClient: APIClientProtocol {
    func execute<T: Decodable>(endpoint: Endpoint) async throws -> T {
        let (data, _) = try await URLSession.shared.data(for: endpoint.urlRequest)
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        return decodedData
    }
}
