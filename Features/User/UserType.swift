//
//  Type.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A model representing a user.
struct User: Identifiable, Codable {
    let id: UUID
    let name: String
    let email: String
}

/// A use case for getting users.
typealias GetUserUseCase = UseCase<GetUserRepository>
