//
//  UseCase.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A generic protocol for use cases representing business logic.
protocol UseCaseType {
    associatedtype Request
    associatedtype Response

    /// Executes the use case with the given request.
    func execute(request: Request) async throws -> Response
}


