//
//  NameTextField.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import SwiftUI

struct NameTextField: View {
    @Binding var name: String
    @Binding var color: Color
    @Binding var showAlert: Bool
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        HStack{
            TextField("Введи логин", text: $name)
                .onChange(of: name, perform: { _ in
                    checkingButton()
                })
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    showAlert = userManager.checkingName(name: name)
                }
            Text("\(name.count)")
        }
    }
    
    func checkingButton() {
        if name.count < 3 {
            color = .gray
        } else {
            color = .blue
        }
    }
}

struct NameTextField_Previews: PreviewProvider {
    static var previews: some View {
        NameTextField(name: .constant("name"), color: .constant(.gray), showAlert: .constant(false))
    }
}
