//
//  Datafetcher.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import Foundation

/// A protocol for data fetchers that fetch data asynchronously.
protocol DataFetcherType {
    associatedtype Response

    /// Fetches data asynchronously.
    func fetch() async throws -> Response
}


