//
//  Repository.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A generic protocol for repositories handling data operations.
protocol Repository {
    associatedtype Request
    associatedtype Response

    /// Executes a data operation with the given request.
    func execute(request: Request) async throws -> Response
}
