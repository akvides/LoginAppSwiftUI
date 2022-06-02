//
//  RegisterView.swift
//  LoginAppSwiftUI
//
//  Created by Василий Полторак on 02.06.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var color = Color(.gray)
    @State private var showAlert = false
    
    var body: some View {
        VStack{
            NameTextField(name: $name, color: $color)
            OkButton(color: $color, showAlert: $showAlert)
        }
        .padding(.horizontal, 40)
    }
}



struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


