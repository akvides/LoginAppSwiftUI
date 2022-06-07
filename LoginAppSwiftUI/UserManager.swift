//
//  UserManager.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import Combine

class UserManager: ObservableObject {
    private let storageManager = StorageManager.shared
    
    @Published var isRegistered: Bool
    lazy var name = storageManager.getName().name
    
    init() {
        self.isRegistered = storageManager.getName().registered
    }
    
    func checkingName(name: String) -> Bool {
        if name.count < 3 {
            return true
        } else {
            storageManager.save(name)
            isRegistered.toggle()
            self.name = name
            return false
        }
    }
}
