//
//  RegisterView.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var color: Color = .gray
    @State private var showAlert = false
    
    private let storageManager = StorageManager.shared
    @EnvironmentObject private var userManager: UserManager
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        VStack{
            Spacer()
            VStack{
                NameTextField(name: $name, color: $color, showAlert: $showAlert)
                    .focused($focusedField)
                OkButton(color: $color, showAlert: $showAlert, name: $name)
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        showAlert = userManager.checkingName(name: name)
                    }
                }
            }
            .padding(.horizontal, 40)
            Spacer()
        }
        .onTapGesture {
            focusedField = false
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


