//
//  OkButton.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import SwiftUI

struct OkButton: View {
    
    @EnvironmentObject private var userManager: UserManager
    @Binding var color: Color
    @Binding var showAlert: Bool
    @Binding var name: String
    
    private let storageManager = StorageManager.shared
    
    var body: some View {
        Button(action: tapButton) {
            Image(systemName: "checkmark.circle")
            Text("OK")
        }
        .padding(10)
        .padding(.horizontal, 20)
        .background(color)
        .tint(.white)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(lineWidth: 3)
        )
        .alert("Мало символов", isPresented: $showAlert) {
            Text("")
        }   
    }
    
    func tapButton() {
        showAlert = userManager.checkingName(name: name)
    }
}

struct OkButton_Previews: PreviewProvider {
    static var previews: some View {
        OkButton(color: .constant(.gray), showAlert: .constant(false), name: .constant(""))
    }
}
