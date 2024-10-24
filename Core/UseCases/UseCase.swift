//
//  UseCase.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A generic use case that operates with a given repository.
class UseCase<R: Repository>: UseCaseType {
    typealias Request = R.Request
    typealias Response = R.Response

    private let repository: R

    /// Initializes the use case with a repository.
    init(repository: R) {
        self.repository = repository
    }

    func execute(request: Request) async throws -> Response {
        try await repository.execute(request: request)
    }
}
