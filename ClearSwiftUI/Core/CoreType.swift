//
//  Type.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import SwiftUI

/// A view container that fetches data and displays content.
struct ViewContainer<Fetcher: DataFetcherType, Content: View>: View {
    @ViewBuilder let content: (Fetcher.Response) -> Content

    @State private var response: Fetcher.Response?
    @State private var hasError = false

    private let dataFetcher: Fetcher

    /// Initializes the view container with a data fetcher and content closure.
    init(dataFetcher: Fetcher, @ViewBuilder content: @escaping (Fetcher.Response) -> Content) {
        self.dataFetcher = dataFetcher
        self.content = content
    }

    var body: some View {
        Group {
            if let response = response {
                content(response)
            } else if hasError {
                Text("Failed to load data.")
            } else {
                ProgressView()
            }
        }
        .task {
            do {
                response = try await dataFetcher.fetch()
            } catch {
                hasError = true
                print("Error fetching data: \(error)")
            }
        }
    }
}
