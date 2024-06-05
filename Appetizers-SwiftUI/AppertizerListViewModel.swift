//
//  AppertizerListViewModel.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 29/05/24.
//

import SwiftUI

final class AppertizerListViewModel: ObservableObject {
  @Published var appetizers: [Appetizer] = []
  @Published var alertItem: AlertItem?
  @Published var isLoading: Bool = false

  func getAppetizers() {
    isLoading = true
    NetworkManager.shared.getAppetizers { result in
      DispatchQueue.main.async { [self] in
        isLoading = false
        switch result {

        case .success(let appetizers):
          self.appetizers = appetizers

        case .failure(let error):
          switch error {
          case .invalidResponse: alertItem = AlertContext.invalidResponse
          case .invalidURL: alertItem = AlertContext.invalidURL
          case .invalidData: alertItem = AlertContext.invalidData
          case .unableToComplete: alertItem = AlertContext.unableToComplete
          }
        }
      }
    }
  }
}
