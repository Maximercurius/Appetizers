//
//  User.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 03.07.2024.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDay = Date()
    var extraNapkins = false
    var frequentRefills = false
}
