//
//  StartView.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 06.06.2022.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Group {
            if user.isRegistered {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .environmentObject(UserManager())
    }
}
