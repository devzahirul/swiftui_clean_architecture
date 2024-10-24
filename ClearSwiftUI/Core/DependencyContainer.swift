//
//  DependencyContainer.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A singleton class that manages dependencies.
struct DependencyContainer {
    static let shared = DependencyContainer()

    

    private init() {
        // Initialize API client
        let apiClient = APIClient()

        // Initialize repositories
        let getUserRepository = GetUserRepository(apiClient: apiClient)

        // Initialize use cases
        let getUserUseCase = GetUserUseCase(repository: getUserRepository)
    }
}
