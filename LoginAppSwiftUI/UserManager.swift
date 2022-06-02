//
//  UserManager.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
