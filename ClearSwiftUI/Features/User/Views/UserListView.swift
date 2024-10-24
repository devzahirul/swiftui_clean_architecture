//
//  UserListView.swift
//  ClearSwiftUI
//
//  Created by lynkto_1 on 10/24/24.
//

import SwiftUI

/// A view that displays a list of users.
struct UserListView: View {
    let users: [User]

    var body: some View {
        List(users) { user in
            Text(user.name)
        }
    }
}
