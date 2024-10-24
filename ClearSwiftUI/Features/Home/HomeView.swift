//
//  HomeView.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ViewContainer(dataFetcher: DataFetcher(useCase: UseCase(repository: MockGetUserRepository(apiClient: APIClient())), request: ())) {
            UserListView(users: $0)
        }
    }
}
