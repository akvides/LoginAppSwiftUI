//
//  StorageManager.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import Foundation

class StorageManager {
    
    let userDefaults = UserDefaults.standard
    static let shared = StorageManager()
    
    private init() {}
    
    func save(_ value: String) {
        userDefaults.set(value, forKey: "name")
    }
    
    func delete() {
        userDefaults.removeObject(forKey: "name")
    }
    
    func getName() -> (name: String,registered: Bool) {
        if let name = userDefaults.string(forKey: "name") {
            return (name, true)
        } else {
            return ("", false)
        }
    }
}
