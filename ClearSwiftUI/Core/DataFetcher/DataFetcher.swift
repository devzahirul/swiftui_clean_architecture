//
//  DataFetcher.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A generic data fetcher that fetches data using a use case.
class DataFetcher<U: UseCaseType>: DataFetcherType {
    typealias Response = U.Response

    private let useCase: U
    private let request: U.Request

    /// Initializes the data fetcher with a use case and request.
    init(useCase: U, request: U.Request) {
        self.useCase = useCase
        self.request = request
    }

    func fetch() async throws -> Response {
        try await useCase.execute(request: request)
    }
}
