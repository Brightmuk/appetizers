//
//  User.swift
//  Appetizers
//
//  Created by Bright Mukonesi on 21/08/2025.
//

import Foundation

struct User: Codable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var dob = Date()
    var extraNapkins = false
    var frequentRefills = false
}
