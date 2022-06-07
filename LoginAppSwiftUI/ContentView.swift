//
//  ContentView.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var userManager: UserManager
    private let storageManager = StorageManager.shared
    var body: some View {
        VStack{
            Text("Привет \(userManager.name)!")
            Spacer()
            Button("Выйти") {
                storageManager.delete()
                userManager.isRegistered.toggle()
            }
            .padding(10)
            .padding(.horizontal, 20)
            .background(.red)
            .tint(.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            )
        }
        .frame(height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
