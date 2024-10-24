//
//  UserRepository.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A repository for fetching users.
class GetUserRepository: Repository {
    typealias Request = Void
    typealias Response = [User]

    private let apiClient: APIClientProtocol

    /// Initializes the repository with an API client.
    init(apiClient: APIClientProtocol) {
        self.apiClient = apiClient
    }

    func execute(request: Void) async throws -> [User] {
        try await apiClient.execute(endpoint: UserEndpoint.getUsers)
    }
}

struct MockGetUserRepository: Repository {
    typealias Request = Void
    typealias Response = [User]

    private let apiClient: APIClientProtocol

    /// Initializes the repository with an API client.
    init(apiClient: APIClientProtocol) {
        self.apiClient = apiClient
    }

    func execute(request: Void) async throws -> [User] {
        [
        User(id: UUID(), name: "Test", email: "test@email.com")
        ]
    }
}
