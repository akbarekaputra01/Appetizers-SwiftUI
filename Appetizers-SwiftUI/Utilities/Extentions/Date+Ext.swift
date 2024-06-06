//
//  Date+Ext.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 06/06/24.
//

import Foundation

extension Date {

  var eighteenYearsAgo: Date {
    Calendar.current.date(byAdding: .year, value: -18, to: Date())!
  }

  var oneHundredTenYearsAgo: Date {
    Calendar.current.date(byAdding: .year, value: -110, to: Date())!
  }
}
