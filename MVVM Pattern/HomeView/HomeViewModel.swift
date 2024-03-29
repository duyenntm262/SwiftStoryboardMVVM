//
//  HomeViewModel.swift
//  MVVM Pattern
//
//  Created by Din Din on 28/03/2024.
//

import Foundation

final class HomeViewModel {
    var welcomeMessage: ObservableObject<String?> =
    ObservableObject(nil)

    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
