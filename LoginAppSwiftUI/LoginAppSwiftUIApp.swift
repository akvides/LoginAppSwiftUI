//
//  LoginAppSwiftUIApp.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import SwiftUI

@main
struct LoginAppSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(userManager)
        }
    }
}
