//
//  UserModel.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 06/06/24.
//

import Foundation

struct User: Codable {
  var firstName = ""
  var lastName = ""
  var email = ""
  var birthdate = Date()
  var extraNapkins = false
  var frequentRefills = false
}
