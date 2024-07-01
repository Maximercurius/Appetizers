//
//  AccountView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDay = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false

    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First name", text:$firstName)
                    TextField("Last name", text:$lastName)
                    TextField("E-mail", text:$email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birth Day", selection: $birthDay, displayedComponents: .date)
                    Button {
                        print("Save")
                    } label: {
                        Text ("Save Changes")
                    }
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Freuent refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            
            .navigationTitle("👤 Account")
        }
    }
}

#Preview {
    AccountView()
}
